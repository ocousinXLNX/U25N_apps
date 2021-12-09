/*
-- (c) Copyright 2018 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
--
-- Vendor         : Xilinx
-- Revision       : $Revision: #7 $
-- Date           : $DateTime: 2020/05/27 12:35:12 $
-- Last Author    : $Author: fmartin $
--
--------------------------------------------------------------------------------
-- Description : Implementation of top level SDNet CAM driver
--
*/
/****************************************************************************************************************************************************/
/* SECTION: Header includes */
/****************************************************************************************************************************************************/

#include "cam_top.h"
#include "bcam.h"
#include "stcam.h"
#include "tcam.h"
#include <string.h>

/****************************************************************************************************************************************************/
/* SECTION: Constants/macros */
/****************************************************************************************************************************************************/

#define XIL_SDNET_DCAM_MAX_RESP_SIZE_BITS (7168)

/* Register map */
#define XIL_SDNET_DCAM_CONTROL_STATUS_REG (0x00)
#define XIL_SDNET_DCAM_ADDRESS_REG (0x04)
#define XIL_SDNET_DCAM_ECC_CONTROL_REG (0x08)
#define XIL_SDNET_DCAM_SINGLE_BIT_ERROR_COUNT_REG (0x18)
#define XIL_SDNET_DCAM_DOUBLE_BIT_ERROR_COUNT_REG (0x1C)
#define XIL_SDNET_DCAM_SINGLE_BIT_LAST_ERROR_ADDR_REG (0x20)
#define XIL_SDNET_DCAM_DOUBLE_BIT_LAST_ERROR_ADDR_REG (0x24)

#define XIL_SDNET_DCAM_DATA_REG_1 (0x40)

#define XIL_SDNET_DCAM_MAX_RESP_SIZE_BYTES (XIL_SDNET_DCAM_MAX_RESP_SIZE_BITS / XIL_SDNET_BITS_PER_BYTE)

/* Control/status register bit masks */
#define XIL_SDNET_DCAM_READ_MASK (1UL << 0)
#define XIL_SDNET_DCAM_WRITE_MASK (1UL << 1)
#define XIL_SDNET_DCAM_HIT_MASK (1UL << 31)

/* Control register command definitions */
#define XIL_SDNET_DCAM_READ (XIL_SDNET_DCAM_READ_MASK)
#define XIL_SDNET_DCAM_WRITE_AND_CLEAR (XIL_SDNET_DCAM_WRITE_MASK)
#define XIL_SDNET_DCAM_WRITE_AND_HIT (XIL_SDNET_DCAM_WRITE_MASK | XIL_SDNET_DCAM_HIT_MASK)
#define XIL_SDNET_DCAM_HIT (XIL_SDNET_DCAM_HIT_MASK)

/* Conversion constants, used to avoid magic numbers in code */
#define XIL_SDNET_NUM_HZ_PER_MHZ  (1000000.0)



/****************************************************************************************************************************************************/
/* SECTION: Type defintions */
/****************************************************************************************************************************************************/

typedef enum XilSdnetCamType
{
    XIL_SDNET_CAM_BCAM,
    XIL_SDNET_CAM_TCAM,
    XIL_SDNET_CAM_STCAM,
    XIL_SDNET_NUM_CAM_TYPES
} XilSdnetCamType;

typedef union XilSdnetCamUnion
{
    struct bcam *BcamPtr;
    struct tcam *TcamPtr;
    struct stcam *StcamPtr;
} XilSdnetCamUnion;

struct XilSdnetCamCtx
{
    XilSdnetEnvIf EnvIf;
    XilSdnetAddressType BaseAddr;
    XilSdnetEndian Endian;
    uint32_t NumEntries;
    uint32_t ResponseSizeBits;
    uint32_t ResponsePaddingSizeBits;
    uint32_t ResponseBufSizeBytes;
    uint32_t KeySizeBits;
    uint32_t KeyPaddingSizeBits;
    uint32_t KeyBufSizeBytes;
    uint8_t *KeyBufPtr;
    uint8_t *MaskBufPtr;
    uint8_t *ResponseBufPtr;
    uint8_t *ResponseMaskBufPtr;
    XilSdnetCamUnion CamUnion;
    cam_arg_t *CamArgPtr;
};

/****************************************************************************************************************************************************/
/* SECTION: Local function declarations */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetCamInit(XilSdnetCamCtx **CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr, XilSdnetCamType CamType);
static XilSdnetReturnType XilSdnetCamCtxCreate(XilSdnetCamCtx **CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr);
static XilSdnetReturnType XilSdnetCamCtxDestroy(XilSdnetCamCtx *CtxPtr);
static XilSdnetReturnType XilSdnetCamObfDrvSetConfig(XilSdnetCamCtx *CtxPtr, XilSdnetCamConfig *ConfigPtr, XilSdnetCamType CamType);
static XilSdnetReturnType XilSdnetCamObfDrvCreate(XilSdnetCamCtx *CtxPtr, XilSdnetCamType CamType);
static XilSdnetReturnType XilSdnetCamByteSwap(XilSdnetCamCtx *CtxPtr, uint8_t *SrcDataPtr, uint8_t *DstDataPtr, bool IsKey);
static XilSdnetReturnType XilSdnetCamExtractNextFieldWidth(char **FormatStringPtr, uint32_t *FieldWidthPtr);
static XilSdnetReturnType XilSdnetCamValidateFieldType(char FieldType);
static XilSdnetReturnType XilSdnetCamConvertErrorCode(int ErrorCode);
static XilSdnetReturnType XilSdnetCamConvertSdnetOptTypeToCamOptValue(XilSdnetCamOptimizationType SdnetOptType, uint32_t *CamOptValuePtr);
static void XilSdnetCamHwWrite(void *CamCtxPtr, uint32_t Offset, uint32_t Data);
static void XilSdnetCamHwRead(void *CamCtxPtr, uint32_t Offset, uint32_t *DataPtr);
static void XilSdnetCamLogError(void *CamCtxPtr, char *MessagePtr);
static void XilSdnetCamLogInfo(void *CamCtxPtr, char *MessagePtr);

static XilSdnetReturnType XilSdnetDcamValidateCtx(XilSdnetCamCtx *CtxPtr);
static XilSdnetReturnType XilSdnetDcamValidateConfig(XilSdnetCamConfig *ConfigPtr);
static XilSdnetReturnType XilSdnetDcamValidateKey(XilSdnetCamCtx *CtxPtr, uint32_t Key);
static XilSdnetReturnType XilSdnetDcamValidateDataBuffer(XilSdnetCamCtx *CtxPtr, uint8_t *DataPtr);
static XilSdnetReturnType XilSdnetDcamGetEntryStatus(XilSdnetCamCtx *CtxPtr, uint32_t Key);
static XilSdnetReturnType XilSdnetDcamWriteEntry(XilSdnetCamCtx *CtxPtr, uint32_t Key, uint8_t *DataPtr);
static XilSdnetReturnType XilSdnetDcamReadEntry(XilSdnetCamCtx *CtxPtr, uint32_t Key, uint8_t *DataPtr);
static XilSdnetReturnType XilSdnetDcamSetEntryStatus(XilSdnetCamCtx *CtxPtr, uint32_t Key, bool Status);
static XilSdnetReturnType XilSdnetCheckMatch(XilSdnetCamCtx *CtxPtr,
                                             uint8_t *ResponsePtr,
                                             uint8_t *ResponseMaskPtr,
                                             uint8_t *EntryPtr,
                                             bool *MatchFoundPtr);

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions - DCAM API */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetDcamInit(XilSdnetDcamCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetValidateEnvIf(EnvIfPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateConfig(ConfigPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Set up common CAM context for direct table */
    PrivateCtxPtr = calloc(1, sizeof(XilSdnetCamCtx));
    if (PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_CAM_ERR_MALLOC_FAILED;
    }

    /* Store provided configuration */
    memcpy(&(PrivateCtxPtr->EnvIf), EnvIfPtr, sizeof(XilSdnetEnvIf));
    PrivateCtxPtr->BaseAddr = ConfigPtr->BaseAddr;
    PrivateCtxPtr->NumEntries = ConfigPtr->NumEntries;
    PrivateCtxPtr->ResponseSizeBits = ConfigPtr->ResponseSizeBits;
    PrivateCtxPtr->ResponsePaddingSizeBits = (ConfigPtr->ResponseSizeBits % XIL_SDNET_BITS_PER_BYTE);
    PrivateCtxPtr->Endian = ConfigPtr->Endian;

    /* Compute the size of the response in terms of bytes, taking padding into account */
    PrivateCtxPtr->ResponseBufSizeBytes = PrivateCtxPtr->ResponseSizeBits / XIL_SDNET_BITS_PER_BYTE;
    if ((PrivateCtxPtr->ResponseSizeBits % XIL_SDNET_BITS_PER_BYTE) != 0)
    {
        PrivateCtxPtr->ResponseBufSizeBytes++;
    }

    CtxPtr->PrivateCtxPtr = PrivateCtxPtr;
    return Result;
}

XilSdnetReturnType XilSdnetDcamReset(XilSdnetDcamCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;
    uint32_t TableEntry = 0;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Loop through all tables and set them equal to zero */
    for (TableEntry = 0; TableEntry < PrivateCtxPtr->NumEntries; TableEntry++)
    {
        Result = XilSdnetDcamSetEntryStatus(PrivateCtxPtr, TableEntry, false);
        if (Result != XIL_SDNET_SUCCESS)
        {
            return Result;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetDcamInsert(XilSdnetDcamCtx *CtxPtr, uint32_t Key, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(PrivateCtxPtr, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Check that direct table entry exists */
    Result = XilSdnetDcamGetEntryStatus(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_CAM_ERR_KEY_NOT_FOUND)
    {
        return Result;
    }

    /* Write direct table entry */
    Result = XilSdnetDcamWriteEntry(PrivateCtxPtr, Key, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Update entry status */
    Result = XilSdnetDcamSetEntryStatus(PrivateCtxPtr, Key, true);
    return Result;
}

XilSdnetReturnType XilSdnetDcamUpdate(XilSdnetDcamCtx *CtxPtr, uint32_t Key, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(PrivateCtxPtr, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Check that direct table entry exists - if so, update */
    Result = XilSdnetDcamGetEntryStatus(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_CAM_ERR_DUPLICATE_FOUND)
    {
        return Result;
    }

    Result = XilSdnetDcamWriteEntry(PrivateCtxPtr, Key, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Updating the entry status ensures DCAM entry is written */
    Result = XilSdnetDcamSetEntryStatus(PrivateCtxPtr, Key, true);
    return Result;
}

XilSdnetReturnType XilSdnetDcamGetByResponse(XilSdnetDcamCtx *CtxPtr,
                                             uint8_t *ResponsePtr,
                                             uint8_t *ResponseMaskPtr,
                                             uint32_t *PositionPtr,
                                             uint32_t *KeyPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;
    uint32_t Position;
    bool MatchFound = false;
    uint8_t ReadResponse[XIL_SDNET_DCAM_MAX_RESP_SIZE_BYTES] = {0};

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(PrivateCtxPtr, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(PrivateCtxPtr, ResponseMaskPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (PositionPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (KeyPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Position = *PositionPtr;

    Result = XilSdnetDcamValidateKey(PrivateCtxPtr, Position);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    while (Position < PrivateCtxPtr->NumEntries)
    {
        /* Not checking for failure as some entries may be deleted causing failure (not found), but this may not be the last entry in the table */
        Result = XilSdnetDcamLookup(CtxPtr, Position, ReadResponse);

        /* If table lookup succeeded, check if what was found matches what we're looking for */
        if (Result == XIL_SDNET_SUCCESS)
        {
            Result = XilSdnetCheckMatch(PrivateCtxPtr, ResponsePtr, ResponseMaskPtr, ReadResponse, &MatchFound);
            if (Result != XIL_SDNET_SUCCESS)
            {
                return Result;
            }
        }

        /* If we have a match - stop searching */
        if (MatchFound == true)
        {
            break;
        }

        Position++;
    }

    if (Result == XIL_SDNET_CAM_ERR_INVALID_KEY)
    {
        *PositionPtr = PrivateCtxPtr->NumEntries;
        Result = XIL_SDNET_CAM_ERR_LOOKUP_NOT_FOUND;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (MatchFound == true)
        {
            *KeyPtr = Position;
            *PositionPtr = Position;
        }
        else
        {
            Result = XIL_SDNET_CAM_ERR_LOOKUP_NOT_FOUND;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetDcamLookup(XilSdnetDcamCtx *CtxPtr, uint32_t Key, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    /* Checks */
    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(PrivateCtxPtr, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Check that direct table entry exists */
    Result = XilSdnetDcamGetEntryStatus(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_CAM_ERR_DUPLICATE_FOUND)
    {
        return Result;
    }

    Result = XilSdnetDcamReadEntry(PrivateCtxPtr, Key, ResponsePtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    return Result;
}

XilSdnetReturnType XilSdnetDcamDelete(XilSdnetDcamCtx *CtxPtr, uint32_t Key)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(PrivateCtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Check that direct table entry exists - if so, delete it */
    Result = XilSdnetDcamGetEntryStatus(PrivateCtxPtr, Key);
    if (Result == XIL_SDNET_CAM_ERR_DUPLICATE_FOUND)
    {
        Result = XilSdnetDcamSetEntryStatus(PrivateCtxPtr, Key, false);
    }

    return Result;
}

XilSdnetReturnType XilSdnetDcamGetEccCountersClearOnRead(XilSdnetDcamCtx *CtxPtr,
                                                         uint32_t *CorrectedSingleBitErrorsPtr,
                                                         uint32_t *DetectedDoubleBitErrorsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    if ((CtxPtr == NULL) || (CorrectedSingleBitErrorsPtr == NULL) || (DetectedDoubleBitErrorsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf),
                                             (PrivateCtxPtr->BaseAddr + XIL_SDNET_DCAM_SINGLE_BIT_ERROR_COUNT_REG),
                                             CorrectedSingleBitErrorsPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf),
                                             (PrivateCtxPtr->BaseAddr + XIL_SDNET_DCAM_DOUBLE_BIT_ERROR_COUNT_REG),
                                             DetectedDoubleBitErrorsPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    return Result;
}

XilSdnetReturnType XilSdnetDcamGetEccAddressesClearOnRead(XilSdnetDcamCtx *CtxPtr,
                                                          uint32_t *FailingAddressSingleBitErrorPtr,
                                                          uint32_t *FailingAddressDoubleBitErrorPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_CAM_ERR_UNSUPPORTED_COMMAND;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    if ((CtxPtr == NULL) || (FailingAddressSingleBitErrorPtr == NULL) || (FailingAddressDoubleBitErrorPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf),
                                             (PrivateCtxPtr->BaseAddr + XIL_SDNET_DCAM_SINGLE_BIT_LAST_ERROR_ADDR_REG),
                                             FailingAddressSingleBitErrorPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf),
                                             (PrivateCtxPtr->BaseAddr + XIL_SDNET_DCAM_DOUBLE_BIT_LAST_ERROR_ADDR_REG),
                                             FailingAddressDoubleBitErrorPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    return Result;
}

XilSdnetReturnType XilSdnetDcamExit(XilSdnetDcamCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetDcamValidateCtx(PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    free(CtxPtr->PrivateCtxPtr);
    CtxPtr->PrivateCtxPtr = NULL;

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions - BCAM API */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetBcamInit(XilSdnetBcamCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (EnvIfPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetCamInit(&(CtxPtr->PrivateCtxPtr), EnvIfPtr, ConfigPtr, XIL_SDNET_CAM_BCAM);

    return Result;
}

XilSdnetReturnType XilSdnetBcamReset(XilSdnetBcamCtx *CtxPtr)
{
    int CamResult = CAM_OK;
    uint32_t Position;
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint8_t *KeyBufPtr;
    uint8_t *ResponsePtr;
    uint8_t *ResponseMaskPtr;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    KeyBufPtr = calloc(1, CtxPtr->PrivateCtxPtr->KeyBufSizeBytes);
    if (KeyBufPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_func;
    }

    ResponsePtr = calloc(1, CtxPtr->PrivateCtxPtr->ResponseBufSizeBytes);
    if (ResponsePtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_key;
    }

    ResponseMaskPtr = calloc(1, CtxPtr->PrivateCtxPtr->ResponseBufSizeBytes);
    if (ResponseMaskPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_response;
    }

    /*
     * Using a ResponseMask of all zeros means get_by_response will find all
     *  keys present
     */
    while (1)
    {
        CamResult = bcam_get_by_response(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, ResponsePtr, ResponseMaskPtr, &Position, KeyBufPtr);

        if (CamResult == CAM_ERROR_KEY_NOT_FOUND)
        {
            /* Table has been successfully emptied */
            CamResult = CAM_OK;
            break;
        }
        if (CamResult != 0)
        {
            break;
        }

        CamResult = bcam_delete(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, KeyBufPtr);
        if (CamResult != 0)
        {
            break;
        }
    }
    Result = XilSdnetCamConvertErrorCode(CamResult);

    free(ResponseMaskPtr);
exit_free_response:
    free(ResponsePtr);
exit_free_key:
    free(KeyBufPtr);
exit_func:
    return Result;
}

XilSdnetReturnType XilSdnetBcamInsert(XilSdnetBcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = bcam_insert(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, KeyParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamUpdate(XilSdnetBcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = bcam_update(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, KeyParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamGetByResponse(XilSdnetBcamCtx *CtxPtr,
                                             uint8_t *ResponsePtr,
                                             uint8_t *ResponseMaskPtr,
                                             uint32_t *PositionPtr,
                                             uint8_t *KeyPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *ResponseParamPtr = ResponsePtr;
    uint8_t *ResponseMaskParamPtr = ResponseMaskPtr;
    uint8_t *KeyParamPtr = KeyPtr;

    if ((CtxPtr == NULL) || (ResponsePtr == NULL) || (ResponseMaskPtr == NULL) || (PositionPtr == NULL) || (KeyPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;

        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
        if (Result == XIL_SDNET_SUCCESS)
        {
            ResponseMaskParamPtr = CtxPtr->PrivateCtxPtr->ResponseMaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseMaskPtr, ResponseMaskParamPtr, false);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = bcam_get_by_response(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, ResponseParamPtr, ResponseMaskParamPtr, PositionPtr, KeyParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyParamPtr, KeyPtr, true);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamGetByKey(XilSdnetBcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;

        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = bcam_get_by_key(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, KeyParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseParamPtr, ResponsePtr, false);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamDelete(XilSdnetBcamCtx *CtxPtr, uint8_t *KeyPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = bcam_delete(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, KeyParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamGetEccCountersClearOnRead(XilSdnetBcamCtx *CtxPtr,
                                                         uint32_t *CorrectedSingleBitErrorsPtr,
                                                         uint32_t *DetectedDoubleBitErrorsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    if ((CtxPtr == NULL) || (CorrectedSingleBitErrorsPtr == NULL) || (DetectedDoubleBitErrorsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult
            = bcam_read_and_clear_ecc_counters(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr, CorrectedSingleBitErrorsPtr, DetectedDoubleBitErrorsPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamGetEccAddressesClearOnRead(XilSdnetBcamCtx *CtxPtr,
                                                          uint32_t *FailingAddressSingleBitErrorPtr,
                                                          uint32_t *FailingAddressDoubleBitErrorPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    if ((CtxPtr == NULL) || (FailingAddressSingleBitErrorPtr == NULL) || (FailingAddressDoubleBitErrorPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = bcam_read_and_clear_ecc_addresses(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr,
                                                      FailingAddressSingleBitErrorPtr,
                                                      FailingAddressDoubleBitErrorPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetBcamExit(XilSdnetBcamCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    bcam_destroy(CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr);
    CtxPtr->PrivateCtxPtr->CamUnion.BcamPtr = NULL;

    Result = XilSdnetCamCtxDestroy(CtxPtr->PrivateCtxPtr);
    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions - TCAM API */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetTcamInit(XilSdnetTcamCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (EnvIfPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetCamInit(&(CtxPtr->PrivateCtxPtr), EnvIfPtr, ConfigPtr, XIL_SDNET_CAM_TCAM);

    return Result;
}

XilSdnetReturnType XilSdnetTcamReset(XilSdnetTcamCtx *CtxPtr)
{
    int CamResult = CAM_OK;
    uint32_t Position;
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint8_t *KeyBufPtr;
    uint8_t *MaskBufPtr;
    uint8_t *ResponsePtr;
    uint8_t *ResponseMaskPtr;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    KeyBufPtr = calloc(1, CtxPtr->PrivateCtxPtr->KeyBufSizeBytes);
    if (KeyBufPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_func;
    }

    MaskBufPtr = calloc(1, CtxPtr->PrivateCtxPtr->KeyBufSizeBytes);
    if (MaskBufPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_key;
    }

    ResponsePtr = calloc(1, CtxPtr->PrivateCtxPtr->ResponseBufSizeBytes);
    if (ResponsePtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_mask;
    }

    ResponseMaskPtr = calloc(1, CtxPtr->PrivateCtxPtr->ResponseBufSizeBytes);
    if (ResponseMaskPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_response;
    }

    /*
     * Using a ResponseMask of all zeros means get_by_response will find all
     *  keys present
     */
    while (1)
    {
        CamResult = tcam_get_by_response(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, ResponsePtr, ResponseMaskPtr, &Position, KeyBufPtr, MaskBufPtr);

        if (CamResult == CAM_ERROR_KEY_NOT_FOUND)
        {
            /* Table has been successfully emptied */
            CamResult = CAM_OK;
            break;
        }
        if (CamResult != 0)
        {
            break;
        }

        CamResult = tcam_delete(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, KeyBufPtr, MaskBufPtr);
        if (CamResult != 0)
        {
            break;
        }
    }
    Result = XilSdnetCamConvertErrorCode(CamResult);

    free(ResponseMaskPtr);
exit_free_response:
    free(ResponsePtr);
exit_free_mask:
    free(MaskBufPtr);
exit_free_key:
    free(KeyBufPtr);
exit_func:

    return Result;
}

XilSdnetReturnType XilSdnetTcamInsert(XilSdnetTcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr, uint32_t Priority, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
            if (Result == XIL_SDNET_SUCCESS)
            {
                ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
                Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
            }
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_insert(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, KeyParamPtr, MaskParamPtr, Priority, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamUpdate(XilSdnetTcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
            if (Result == XIL_SDNET_SUCCESS)
            {
                ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
                Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
            }
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_update(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, KeyParamPtr, MaskParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamGetByResponse(XilSdnetTcamCtx *CtxPtr,
                                             uint8_t *ResponsePtr,
                                             uint8_t *ResponseMaskPtr,
                                             uint32_t *PositionPtr,
                                             uint8_t *KeyPtr,
                                             uint8_t *MaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;
    uint8_t *ResponseMaskParamPtr = ResponseMaskPtr;

    if ((CtxPtr == NULL) || (ResponsePtr == NULL) || (ResponseMaskPtr == NULL) || (PositionPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;

        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
        if (Result == XIL_SDNET_SUCCESS)
        {
            ResponseMaskParamPtr = CtxPtr->PrivateCtxPtr->ResponseMaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseMaskPtr, ResponseMaskParamPtr, false);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_get_by_response(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr,
                                         ResponseParamPtr,
                                         ResponseMaskParamPtr,
                                         PositionPtr,
                                         KeyParamPtr,
                                         MaskParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyParamPtr, KeyPtr, true);
            if (Result == XIL_SDNET_SUCCESS)
            {
                Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskParamPtr, MaskPtr, true);
            }
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamGetByKey(XilSdnetTcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr, uint32_t *PriorityPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL) || (PriorityPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;

        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_get_by_key(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, KeyParamPtr, MaskParamPtr, PriorityPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseParamPtr, ResponsePtr, false);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamLookup(XilSdnetTcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;

        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_lookup(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, KeyParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseParamPtr, ResponsePtr, false);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamDelete(XilSdnetTcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_delete(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, KeyParamPtr, MaskParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamGetEccCountersClearOnRead(XilSdnetTcamCtx *CtxPtr,
                                                         uint32_t *CorrectedSingleBitErrorsPtr,
                                                         uint32_t *DetectedDoubleBitErrorsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    if ((CtxPtr == NULL) || (CorrectedSingleBitErrorsPtr == NULL) || (DetectedDoubleBitErrorsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult
            = tcam_read_and_clear_ecc_counters(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr, CorrectedSingleBitErrorsPtr, DetectedDoubleBitErrorsPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamGetEccAddressesClearOnRead(XilSdnetTcamCtx *CtxPtr,
                                                          uint32_t *FailingAddressSingleBitErrorPtr,
                                                          uint32_t *FailingAddressDoubleBitErrorPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    if ((CtxPtr == NULL) || (FailingAddressSingleBitErrorPtr == NULL) || (FailingAddressDoubleBitErrorPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = tcam_read_and_clear_ecc_addresses(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr,
                                                      FailingAddressSingleBitErrorPtr,
                                                      FailingAddressDoubleBitErrorPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTcamExit(XilSdnetTcamCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    tcam_destroy(CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr);
    CtxPtr->PrivateCtxPtr->CamUnion.TcamPtr = NULL;

    Result = XilSdnetCamCtxDestroy(CtxPtr->PrivateCtxPtr);
    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions - STCAM API */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetStcamInit(XilSdnetStcamCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (EnvIfPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetCamInit(&(CtxPtr->PrivateCtxPtr), EnvIfPtr, ConfigPtr, XIL_SDNET_CAM_STCAM);

    return Result;
}

XilSdnetReturnType XilSdnetStcamReset(XilSdnetStcamCtx *CtxPtr)
{
    int CamResult = CAM_OK;
    uint32_t Position;
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint8_t *KeyBufPtr;
    uint8_t *MaskBufPtr;
    uint8_t *ResponsePtr;
    uint8_t *ResponseMaskPtr;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    KeyBufPtr = calloc(1, CtxPtr->PrivateCtxPtr->KeyBufSizeBytes);
    if (KeyBufPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_func;
    }

    MaskBufPtr = calloc(1, CtxPtr->PrivateCtxPtr->KeyBufSizeBytes);
    if (MaskBufPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_key;
    }

    ResponsePtr = calloc(1, CtxPtr->PrivateCtxPtr->ResponseBufSizeBytes);
    if (ResponsePtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_mask;
    }

    ResponseMaskPtr = calloc(1, CtxPtr->PrivateCtxPtr->ResponseBufSizeBytes);
    if (ResponseMaskPtr == NULL)
    {
        Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
        goto exit_free_response;
    }

    /*
     * Using a ResponseMask of all zeros means get_by_response will find all
     *  keys present
     */
    while (1)
    {
        CamResult = stcam_get_by_response(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, ResponsePtr, ResponseMaskPtr, &Position, KeyBufPtr, MaskBufPtr);

        if (CamResult == CAM_ERROR_KEY_NOT_FOUND)
        {
            /* Table has been successfully emptied */
            CamResult = CAM_OK;
            break;
        }
        if (CamResult != 0)
        {
            break;
        }

        CamResult = stcam_delete(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, KeyBufPtr, MaskBufPtr);
        if (CamResult != 0)
        {
            break;
        }
    }
    Result = XilSdnetCamConvertErrorCode(CamResult);

    free(ResponseMaskPtr);
exit_free_response:
    free(ResponsePtr);
exit_free_mask:
    free(MaskBufPtr);
exit_free_key:
    free(KeyBufPtr);
exit_func:
    return Result;
}

XilSdnetReturnType XilSdnetStcamInsert(XilSdnetStcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr, uint32_t Priority, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
            if (Result == XIL_SDNET_SUCCESS)
            {
                ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
                Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
            }
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_insert(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, KeyParamPtr, MaskParamPtr, Priority, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamUpdate(XilSdnetStcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
            if (Result == XIL_SDNET_SUCCESS)
            {
                ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
                Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
            }
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_update(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, KeyParamPtr, MaskParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamGetByResponse(XilSdnetStcamCtx *CtxPtr,
                                              uint8_t *ResponsePtr,
                                              uint8_t *ResponseMaskPtr,
                                              uint32_t *PositionPtr,
                                              uint8_t *KeyPtr,
                                              uint8_t *MaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *ResponseParamPtr = ResponsePtr;
    uint8_t *ResponseMaskParamPtr = ResponseMaskPtr;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;

    if ((CtxPtr == NULL) || (ResponsePtr == NULL) || (ResponseMaskPtr == NULL) || (PositionPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;

        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponsePtr, ResponseParamPtr, false);
        if (Result == XIL_SDNET_SUCCESS)
        {
            ResponseMaskParamPtr = CtxPtr->PrivateCtxPtr->ResponseMaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseMaskPtr, ResponseMaskParamPtr, false);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_get_by_response(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr,
                                          ResponseParamPtr,
                                          ResponseMaskParamPtr,
                                          PositionPtr,
                                          KeyParamPtr,
                                          MaskParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyParamPtr, KeyPtr, true);
            if (Result == XIL_SDNET_SUCCESS)
            {
                Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskParamPtr, MaskPtr, true);
            }
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamGetByKey(XilSdnetStcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr, uint32_t *PriorityPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL) || (PriorityPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;

        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_get_by_key(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, KeyParamPtr, MaskParamPtr, PriorityPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseParamPtr, ResponsePtr, false);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamLookup(XilSdnetStcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *ResponseParamPtr = ResponsePtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        ResponseParamPtr = CtxPtr->PrivateCtxPtr->ResponseBufPtr;

        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_lookup(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, KeyParamPtr, ResponseParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, ResponseParamPtr, ResponsePtr, false);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamDelete(XilSdnetStcamCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    uint8_t *KeyParamPtr = KeyPtr;
    uint8_t *MaskParamPtr = MaskPtr;

    if ((CtxPtr == NULL) || (KeyPtr == NULL) || (MaskPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (CtxPtr->PrivateCtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        KeyParamPtr = CtxPtr->PrivateCtxPtr->KeyBufPtr;
        Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, KeyPtr, KeyParamPtr, true);
        if (Result == XIL_SDNET_SUCCESS)
        {
            MaskParamPtr = CtxPtr->PrivateCtxPtr->MaskBufPtr;
            Result = XilSdnetCamByteSwap(CtxPtr->PrivateCtxPtr, MaskPtr, MaskParamPtr, true);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_delete(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, KeyParamPtr, MaskParamPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamGetEccCountersClearOnRead(XilSdnetStcamCtx *CtxPtr,
                                                          uint32_t *CorrectedSingleBitErrorsPtr,
                                                          uint32_t *DetectedDoubleBitErrorsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    if ((CtxPtr == NULL) || (CorrectedSingleBitErrorsPtr == NULL) || (DetectedDoubleBitErrorsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult
            = stcam_read_and_clear_ecc_counters(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr, CorrectedSingleBitErrorsPtr, DetectedDoubleBitErrorsPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamGetEccAddressesClearOnRead(XilSdnetStcamCtx *CtxPtr,
                                                           uint32_t *FailingAddressSingleBitErrorPtr,
                                                           uint32_t *FailingAddressDoubleBitErrorPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    if ((CtxPtr == NULL) || (FailingAddressSingleBitErrorPtr == NULL) || (FailingAddressDoubleBitErrorPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CamResult = stcam_read_and_clear_ecc_addresses(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr,
                                                       FailingAddressSingleBitErrorPtr,
                                                       FailingAddressDoubleBitErrorPtr);
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

XilSdnetReturnType XilSdnetStcamExit(XilSdnetStcamCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    stcam_destroy(CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr);
    CtxPtr->PrivateCtxPtr->CamUnion.StcamPtr = NULL;

    Result = XilSdnetCamCtxDestroy(CtxPtr->PrivateCtxPtr);
    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions - Utilities */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetCamGetKeyLengthInBits(char *FormatStringPtr, uint32_t *KeyLengthPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetReturnType ExtractResult = XIL_SDNET_SUCCESS;
    uint32_t KeyLength = 0;
    uint32_t FieldWidth = 0;

    if ((FormatStringPtr == NULL) || (KeyLengthPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Iterate over format string and extract the size of each field */
    while (ExtractResult == XIL_SDNET_SUCCESS)
    {
        ExtractResult = XilSdnetCamExtractNextFieldWidth(&FormatStringPtr, &FieldWidth);
        if (ExtractResult == XIL_SDNET_SUCCESS)
        {
            KeyLength += FieldWidth;
        }
    }

    if (KeyLength != 0)
    {
        *KeyLengthPtr = KeyLength;
    }
    else
    {
        Result = XIL_SDNET_CAM_ERR_FORMAT_SYNTAX;
    }

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Debug controls */
/****************************************************************************************************************************************************/

static uint32_t XilSdnetCamDebugFlags = CAM_DEBUG_NONE;

void XilSdnetCamSetDebugFlags(uint32_t flags)
{
    XilSdnetCamDebugFlags = flags;
}

uint32_t XilSdnetCamGetDebugFlags(void)
{
    return XilSdnetCamDebugFlags;
}

/****************************************************************************************************************************************************/
/* SECTION: Local function definitions */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetCamInit(XilSdnetCamCtx **CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr, XilSdnetCamType CamType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamCtx *AllocPtr = NULL;

    Result = XilSdnetCamCtxCreate(&AllocPtr, EnvIfPtr, ConfigPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_ctx_create;
    }

    Result = XilSdnetCamObfDrvSetConfig(AllocPtr, ConfigPtr, CamType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_obf_drv_configure;
    }

    Result = XilSdnetCamObfDrvCreate(AllocPtr, CamType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_obf_drv_create;
    }

    /* Return allocated context to the caller */
    *CtxPtr = AllocPtr;
    return Result;

    /* Error handling path with deliberate fall-through */
fail_obf_drv_create:
fail_obf_drv_configure:
    XilSdnetCamCtxDestroy(AllocPtr);
fail_ctx_create:
    return Result;
}

static XilSdnetReturnType XilSdnetCamCtxCreate(XilSdnetCamCtx **CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetCamConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;

    XilSdnetCamCtx *AllocPtr = NULL;
    bool DoSwap = false;

    if ((CtxPtr == NULL) || (EnvIfPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    /* Provided pointer should be NULL - if not, we're looking at invalid memory somehow */
    if (*CtxPtr != NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    /* If endian swap is needed, more memory must be allocated */
    if (ConfigPtr->Endian == XIL_SDNET_LITTLE_ENDIAN)
    {
        DoSwap = false;
    }
    else if (ConfigPtr->Endian == XIL_SDNET_BIG_ENDIAN)
    {
        DoSwap = true;
    }
    else
    {
        return XIL_SDNET_CAM_ERR_INVALID_ENDIAN;
    }

    AllocPtr = calloc(1, sizeof(XilSdnetCamCtx));
    if (AllocPtr == NULL)
    {
        return XIL_SDNET_CAM_ERR_MALLOC_FAILED;
    }

    /* Allocation to store the obfuscated cam driver configuration */
    CamResult = cam_arg_create(&AllocPtr->CamArgPtr);
    Result = XilSdnetCamConvertErrorCode(CamResult);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_cam_arg_create;
    }

    /* Compute and store key width - needed for BCAM and STCAM and also for endian swap buffer sizing */
    Result = XilSdnetCamGetKeyLengthInBits(ConfigPtr->FormatStringPtr, &(AllocPtr->KeySizeBits));
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_key_len;
    }

    /* Compute storage needs used for little endian configuration and reset functions */
    AllocPtr->KeyPaddingSizeBits = AllocPtr->KeySizeBits % XIL_SDNET_BITS_PER_BYTE;
    AllocPtr->KeyBufSizeBytes = AllocPtr->KeySizeBits / XIL_SDNET_BITS_PER_BYTE;
    if (AllocPtr->KeyPaddingSizeBits != 0)
    {
        AllocPtr->KeyBufSizeBytes++;
        AllocPtr->KeyPaddingSizeBits = XIL_SDNET_BITS_PER_BYTE - AllocPtr->KeyPaddingSizeBits;
    }

    AllocPtr->ResponseSizeBits = ConfigPtr->ResponseSizeBits;
    AllocPtr->ResponsePaddingSizeBits = ConfigPtr->ResponseSizeBits % XIL_SDNET_BITS_PER_BYTE;
    AllocPtr->ResponseBufSizeBytes = ConfigPtr->ResponseSizeBits / XIL_SDNET_BITS_PER_BYTE;
    if (AllocPtr->ResponsePaddingSizeBits != 0)
    {
        AllocPtr->ResponseBufSizeBytes++;
        AllocPtr->ResponsePaddingSizeBits = XIL_SDNET_BITS_PER_BYTE - AllocPtr->ResponsePaddingSizeBits;
    }

    /* These steps are not needed when running in little-endian configuration */
    if (DoSwap == true)
    {
        /* Allocate storage */
        AllocPtr->KeyBufPtr = malloc(AllocPtr->KeyBufSizeBytes);
        AllocPtr->MaskBufPtr = malloc(AllocPtr->KeyBufSizeBytes);
        AllocPtr->ResponseBufPtr = malloc(AllocPtr->ResponseBufSizeBytes);
        AllocPtr->ResponseMaskBufPtr = malloc(AllocPtr->ResponseBufSizeBytes);

        /* If any of the above should fail, clean up any and all which may have succeeded */
        if ((AllocPtr->KeyBufPtr == NULL) || (AllocPtr->MaskBufPtr == NULL) || (AllocPtr->ResponseBufPtr == NULL)
            || (AllocPtr->ResponseMaskBufPtr == NULL))
        {
            Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
            goto fail_endian_swap_malloc;
        }
    }

    /* Complete the population of the context and return it to the caller */
    memcpy(&(AllocPtr->EnvIf), EnvIfPtr, sizeof(AllocPtr->EnvIf));
    AllocPtr->BaseAddr = ConfigPtr->BaseAddr;
    AllocPtr->NumEntries = ConfigPtr->NumEntries;
    AllocPtr->Endian = ConfigPtr->Endian;
    *CtxPtr = AllocPtr;
    return Result;

    /* Error handling */
fail_endian_swap_malloc:
    /* Safe even in little endian mode because AllocPtr is allocated with calloc */
    free(AllocPtr->KeyBufPtr);
    free(AllocPtr->MaskBufPtr);
    free(AllocPtr->ResponseBufPtr);
    free(AllocPtr->ResponseMaskBufPtr);
fail_key_len:
    cam_arg_destroy(AllocPtr->CamArgPtr);
fail_cam_arg_create:
    free(AllocPtr);

    return Result;
}

static XilSdnetReturnType XilSdnetCamCtxDestroy(XilSdnetCamCtx *CtxPtr)
{
    /* If a NULL is passed, the context has already been cleaned up so return indicating success */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_SUCCESS;
    }

    /* Ensure that the CAM-specific context has been cleaned up first so that there's no dangling pointers - union means one check is enough */
    if (CtxPtr->CamUnion.BcamPtr != NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    /* Free up all memories that were allocated during creation */
    free(CtxPtr->KeyBufPtr);
    free(CtxPtr->MaskBufPtr);
    free(CtxPtr->ResponseBufPtr);
    free(CtxPtr->ResponseMaskBufPtr);
    cam_arg_destroy(CtxPtr->CamArgPtr);
    free(CtxPtr);

    return XIL_SDNET_SUCCESS;
}

static XilSdnetReturnType XilSdnetCamObfDrvSetConfig(XilSdnetCamCtx *CtxPtr, XilSdnetCamConfig *ConfigPtr, XilSdnetCamType CamType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    int CamResult = CAM_OK;
    float LookupFrequencyMhz;
    float RamFrequencyMhz;
    float LookupsMillionsPerSec;
    uint32_t CamOptimizationValue;


    if ((CtxPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    /* Force priority width if specified */
    if (ConfigPtr->PrioritySizeBits != XIL_SDNET_CAM_PRIORITY_SIZE_DEFAULT)
    {
        cam_arg_force_prio_width(CtxPtr->CamArgPtr, ConfigPtr->PrioritySizeBits);
    }

    /* Apply selected memory type configuration  */
    switch (ConfigPtr->MemType)
    {
        case XIL_SDNET_CAM_MEM_AUTO:
            break;

        case XIL_SDNET_CAM_MEM_BRAM:
            cam_arg_force_mem_type(CtxPtr->CamArgPtr, false);
            break;

        case XIL_SDNET_CAM_MEM_URAM:
            cam_arg_force_mem_type(CtxPtr->CamArgPtr, true);
            break;

        case XIL_SDNET_CAM_MEM_HBM:
            cam_arg_force_hbm(CtxPtr->CamArgPtr);
            break;

        default:
            Result = XIL_SDNET_CAM_ERR_INVALID_MEM_TYPE;
            break;
    }

    /* Apply remaining configuration */
    if (Result == XIL_SDNET_SUCCESS)
    {
        cam_arg_set_inst_ctx(CtxPtr->CamArgPtr, CtxPtr);
        cam_arg_set_hw_write_function(CtxPtr->CamArgPtr, XilSdnetCamHwWrite);
        cam_arg_set_hw_read_function(CtxPtr->CamArgPtr, XilSdnetCamHwRead);
        cam_arg_set_error_print_function(CtxPtr->CamArgPtr, XilSdnetCamLogError);
        cam_arg_set_info_print_function(CtxPtr->CamArgPtr, XilSdnetCamLogInfo);
        cam_arg_set_debug_flags(CtxPtr->CamArgPtr, XilSdnetCamDebugFlags);
        cam_arg_set_num_entries(CtxPtr->CamArgPtr, ConfigPtr->NumEntries);
        cam_arg_set_response_width(CtxPtr->CamArgPtr, ConfigPtr->ResponseSizeBits);

        LookupsMillionsPerSec = (float)(ConfigPtr->LookupsPerSec/1000000.0);
        cam_arg_set_engine_lookup_rate(CtxPtr->CamArgPtr, LookupsMillionsPerSec);

        /* The following must be skipped when HBM is being used */
        if (ConfigPtr->MemType != XIL_SDNET_CAM_MEM_HBM)
        {
            RamFrequencyMhz = (float)(ConfigPtr->RamFrequencyHz/XIL_SDNET_NUM_HZ_PER_MHZ);
            cam_arg_set_ram_freq(CtxPtr->CamArgPtr, RamFrequencyMhz);

            LookupFrequencyMhz = (float)(ConfigPtr->LookupFrequencyHz/XIL_SDNET_NUM_HZ_PER_MHZ);
            cam_arg_set_lookup_interface_freq(CtxPtr->CamArgPtr, LookupFrequencyMhz);
        }
    }

    switch (CamType)
    {
        case XIL_SDNET_CAM_BCAM:
            cam_arg_set_key_width(CtxPtr->CamArgPtr, CtxPtr->KeySizeBits);
            break;

        case XIL_SDNET_CAM_TCAM:
            CamResult = cam_arg_set_format(CtxPtr->CamArgPtr, ConfigPtr->FormatStringPtr);
            Result = XilSdnetCamConvertErrorCode(CamResult);
            break;

        case XIL_SDNET_CAM_STCAM:
            cam_arg_set_key_width(CtxPtr->CamArgPtr, CtxPtr->KeySizeBits);
            cam_arg_set_num_masks(CtxPtr->CamArgPtr, ConfigPtr->NumMasks);
            break;

        default:
            Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
            break;
    }

    // Set the Optimisation level here
    Result = XilSdnetCamConvertSdnetOptTypeToCamOptValue(ConfigPtr->OptimizationType, &CamOptimizationValue);
    if (Result == XIL_SDNET_SUCCESS)
    {
        cam_arg_set_optimization_flags(CtxPtr->CamArgPtr, CamOptimizationValue);
    }

    return Result;
}

static XilSdnetReturnType XilSdnetCamObfDrvCreate(XilSdnetCamCtx *CtxPtr, XilSdnetCamType CamType)
{
    int CamResult = CAM_OK;
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    switch (CamType)
    {
        case XIL_SDNET_CAM_BCAM:
            CamResult = bcam_create(CtxPtr->CamArgPtr, &(CtxPtr->CamUnion.BcamPtr));
            break;

        case XIL_SDNET_CAM_TCAM:
            CamResult = tcam_create(CtxPtr->CamArgPtr, &(CtxPtr->CamUnion.TcamPtr));
            break;

        case XIL_SDNET_CAM_STCAM:
            CamResult = stcam_create(CtxPtr->CamArgPtr, &(CtxPtr->CamUnion.StcamPtr));
            break;

        default:
            Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
            break;
    }

    /* If one of the cases matched, get its result */
    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetCamConvertErrorCode(CamResult);
    }

    return Result;
}

static XilSdnetReturnType XilSdnetCamByteSwap(XilSdnetCamCtx *CtxPtr, uint8_t *SrcDataPtr, uint8_t *DstDataPtr, bool IsKey)
{
    uint32_t ByteIndex = 0;
    uint32_t BufSizeBytes = 0;

    if ((CtxPtr == NULL) || (SrcDataPtr == NULL) || (DstDataPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    /* Determine the buffer size of the provided data */
    if (IsKey == true)
    {
        BufSizeBytes = CtxPtr->KeyBufSizeBytes;
    }
    else
    {
        BufSizeBytes = CtxPtr->ResponseBufSizeBytes;
    }

    for (ByteIndex = 0; ByteIndex < BufSizeBytes; ByteIndex++)
    {
        DstDataPtr[BufSizeBytes - ByteIndex - 1] = SrcDataPtr[ByteIndex];
    }

    return XIL_SDNET_SUCCESS;
}

static XilSdnetReturnType XilSdnetCamExtractNextFieldWidth(char **FormatStringPtr, uint32_t *FieldWidthPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t FieldWidth = 0;
    char *FieldEndPtr = NULL;
    char *CurrCharPtr = NULL;
    uint32_t ScaleFactor = 1;
    int CurrDigit = 0;
    int FieldStringLength = 0;

    if ((FormatStringPtr == NULL) || (FieldWidthPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    if (*FormatStringPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    FieldEndPtr = strchr(*FormatStringPtr, ':');
    if (FieldEndPtr != NULL)
    {
        /* Delimiter not allowed in first character of the string */
        if (FieldEndPtr == *FormatStringPtr)
        {
            FieldEndPtr = NULL;
            Result = XIL_SDNET_CAM_ERR_FORMAT_SYNTAX;
        }
    }
    else
    {
        FieldStringLength = strlen(*FormatStringPtr);

        /* The string must have at least one character */
        if (FieldStringLength == 0)
        {
            Result = XIL_SDNET_CAM_ERR_FORMAT_SYNTAX;
        }
        else
        {
            FieldEndPtr = *FormatStringPtr + FieldStringLength;
        }
    }

    /* Identify the format of the field */
    if (Result == XIL_SDNET_SUCCESS)
    {
        CurrCharPtr = FieldEndPtr - 1;
        Result = XilSdnetCamValidateFieldType(*CurrCharPtr);
    }

    /* Extract the width of the field, working from the least to the most significant digit */
    if (Result == XIL_SDNET_SUCCESS)
    {
        while (CurrCharPtr-- != *FormatStringPtr)
        {
            if ((*CurrCharPtr >= '0') && (*CurrCharPtr <= '9'))
            {
                /* Digits are scaled based on their significance (position) in the string - units, tens, hundreds etc. */
                CurrDigit = *CurrCharPtr - '0';
                FieldWidth += ((uint32_t)CurrDigit) * ScaleFactor;
                ScaleFactor *= 10;
            }
            else
            {
                Result = XIL_SDNET_CAM_ERR_FORMAT_SYNTAX;
                break;
            }
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (*FieldEndPtr != '\0')
        {
            FieldEndPtr++;
        }

        *FormatStringPtr = FieldEndPtr;
        *FieldWidthPtr = FieldWidth;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetCamValidateFieldType(char FieldType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    switch (FieldType)
    {
        /* Deliberate fall-through execution */
        case 'r':
        case 'p':
        case 'b':
        case 't':
        case 'c':
        case 'u':
            break;

        /* Invalid field type */
        default:
            Result = XIL_SDNET_CAM_ERR_FORMAT_SYNTAX;
            break;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetCamConvertErrorCode(int ErrorCode)
{
    XilSdnetReturnType Result = XIL_SDNET_CAM_ERR_UNKNOWN;

    switch (ErrorCode)
    {
        case CAM_OK:
            Result = XIL_SDNET_SUCCESS;
            break;

        case CAM_ERROR_FULL:
            Result = XIL_SDNET_CAM_ERR_FULL;
            break;

        case CAM_ERROR_NO_OPEN:
            Result = XIL_SDNET_CAM_ERR_NO_OPEN;
            break;

        case CAM_ERROR_WRONG_KEY_WIDTH:
            Result = XIL_SDNET_CAM_ERR_WRONG_KEY_WIDTH;
            break;

        case CAM_ERROR_TOO_MANY_INSTANCES:
            Result = XIL_SDNET_CAM_ERR_TOO_MANY_INSTANCES;
            break;

        case CAM_ERROR_WRONG_BIT_FIELD_MASK:
            Result = XIL_SDNET_CAM_ERR_WRONG_BIT_FIELD_MASK;
            break;

        case CAM_ERROR_WRONG_CONST_FIELD_MASK:
            Result = XIL_SDNET_CAM_ERR_WRONG_CONST_FIELD_MASK;
            break;

        case CAM_ERROR_WRONG_UNUSED_FIELD_MASK:
            Result = XIL_SDNET_CAM_ERR_WRONG_UNUSED_FIELD_MASK;
            break;

        case CAM_ERROR_INVALID_TERNARY_FIELD_LEN:
            Result = XIL_SDNET_CAM_ERR_INVALID_TERNARY_FIELD_LEN;
            break;

        case CAM_ERROR_WRONG_PRIO_WIDTH:
            Result = XIL_SDNET_CAM_ERR_WRONG_PRIO_WIDTH;
            break;

        case CAM_ERROR_WRONG_MAX:
            Result = XIL_SDNET_CAM_ERR_WRONG_MAX;
            break;

        case CAM_ERROR_DUPLICATE_FOUND:
            Result = XIL_SDNET_CAM_ERR_DUPLICATE_FOUND;
            break;

        case CAM_ERROR_WRONG_PREFIX:
            Result = XIL_SDNET_CAM_ERR_WRONG_PREFIX;
            break;

        case CAM_ERROR_WRONG_PREFIX_MASK:
            Result = XIL_SDNET_CAM_ERR_WRONG_PREFIX_MASK;
            break;

        case CAM_ERROR_WRONG_RANGE:
            Result = XIL_SDNET_CAM_ERR_WRONG_RANGE;
            break;

        case CAM_ERROR_WRONG_RANGE_MASK:
            Result = XIL_SDNET_CAM_ERR_WRONG_RANGE_MASK;
            break;

        case CAM_ERROR_KEY_NOT_FOUND:
            Result = XIL_SDNET_CAM_ERR_KEY_NOT_FOUND;
            break;

        case CAM_ERROR_WRONG_MIN:
            Result = XIL_SDNET_CAM_ERR_WRONG_MIN;
            break;

        case CAM_ERROR_WRONG_PRIO:
            Result = XIL_SDNET_CAM_ERR_WRONG_PRIO;
            break;

        case CAM_ERROR_WRONG_LIST_LENGTH:
            Result = XIL_SDNET_CAM_ERR_WRONG_LIST_LENGTH;
            break;

        case CAM_ERROR_WRONG_NUMBER_OF_SLOTS:
            Result = XIL_SDNET_CAM_ERR_WRONG_NUMBER_OF_SLOTS;
            break;

        case CAM_ERROR_INVALID_MEM_TYPE:
            Result = XIL_SDNET_CAM_ERR_INVALID_MEM_TYPE;
            break;

        case CAM_ERROR_TOO_HIGH_FREQUENCY:
            Result = XIL_SDNET_CAM_ERR_TOO_HIGH_FREQUENCY;
            break;

        case CAM_ERROR_WRONG_TERNARY_MASK:
            Result = XIL_SDNET_CAM_ERR_WRONG_TERNARY_MASK;
            break;

        case CAM_ERROR_MASKED_KEY_BIT_IS_SET:
            Result = XIL_SDNET_CAM_ERR_MASKED_KEY_BIT_IS_SET;
            break;

        case CAM_ERROR_INVALID_MODE:
            Result = XIL_SDNET_CAM_ERR_INVALID_MODE;
            break;

        case CAM_ERROR_WRONG_RESPONSE_WIDTH:
            Result = XIL_SDNET_CAM_ERR_WRONG_RESPONSE_WIDTH;
            break;

        case CAM_ERROR_FORMAT_SYNTAX:
            Result = XIL_SDNET_CAM_ERR_FORMAT_SYNTAX;
            break;

        case CAM_ERROR_TOO_MANY_FIELDS:
            Result = XIL_SDNET_CAM_ERR_TOO_MANY_FIELDS;
            break;

        case CAM_ERROR_TOO_MANY_RANGES:
            Result = XIL_SDNET_CAM_ERR_TOO_MANY_RANGES;
            break;

        case CAM_ERROR_INVALID_RANGE_LEN:
            Result = XIL_SDNET_CAM_ERR_INVALID_RANGE_LEN;
            break;

        case CAM_ERROR_INVALID_RANGE_START:
            Result = XIL_SDNET_CAM_ERR_INVALID_RANGE_START;
            break;

        case CAM_ERROR_INVALID_PREFIX_LEN:
            Result = XIL_SDNET_CAM_ERR_INVALID_PREFIX_LEN;
            break;

        case CAM_ERROR_INVALID_PREFIX_START:
            Result = XIL_SDNET_CAM_ERR_INVALID_PREFIX_START;
            break;

        case CAM_ERROR_INVALID_PREFIX_KEY:
            Result = XIL_SDNET_CAM_ERR_INVALID_PREFIX_KEY;
            break;

        case CAM_ERROR_INVALID_BIT_FIELD_LEN:
            Result = XIL_SDNET_CAM_ERR_INVALID_BIT_FIELD_LEN;
            break;

        case CAM_ERROR_INVALID_BIT_FIELD_START:
            Result = XIL_SDNET_CAM_ERR_INVALID_BIT_FIELD_START;
            break;

        case CAM_ERROR_INVALID_CONST_FIELD_LEN:
            Result = XIL_SDNET_CAM_ERR_INVALID_CONST_FIELD_LEN;
            break;

        case CAM_ERROR_INVALID_CONST_FIELD_START:
            Result = XIL_SDNET_CAM_ERR_INVALID_CONST_FIELD_START;
            break;

        case CAM_ERROR_INVALID_UNUSED_FIELD_LEN:
            Result = XIL_SDNET_CAM_ERR_INVALID_UNUSED_FIELD_LEN;
            break;

        case CAM_ERROR_INVALID_UNUSED_FIELD_START:
            Result = XIL_SDNET_CAM_ERR_INVALID_UNUSED_FIELD_START;
            break;

        case CAM_ERROR_MAX_KEY_LEN_EXCEED:
            Result = XIL_SDNET_CAM_ERR_MAX_KEY_LEN_EXCEED;
            break;

        case CAM_ERROR_INVALID_PRIO_AND_INDEX_WIDTH:
            Result = XIL_SDNET_CAM_ERR_INVALID_PRIO_AND_INDEX_WIDTH;
            break;

        case CAM_ERROR_TOO_MANY_UNITS:
            Result = XIL_SDNET_CAM_ERR_TOO_MANY_UNITS;
            break;

        case CAM_ERROR_NO_MASK:
            Result = XIL_SDNET_CAM_ERR_NO_MASK;
            break;

        case CAM_ERROR_NOMEM:
            Result = XIL_SDNET_CAM_ERR_NOMEM;
            break;

        case CAM_ERROR_MALLOC_FAILED:
            Result = XIL_SDNET_CAM_ERR_MALLOC_FAILED;
            break;

        case CAM_ERROR_INVALID_MEMORY_WIDTH:
            Result = XIL_SDNET_CAM_ERR_INVALID_MEMORY_WIDTH;
            break;

        case CAM_ERROR_UNSUPPORTED_COMMAND:
            Result = XIL_SDNET_CAM_ERR_UNSUPPORTED_COMMAND;
            break;

        case CAM_ERROR_ENVIRONMENT:
            Result = XIL_SDNET_CAM_ERR_ENVIRONMENT;
            break;

        case CAM_ERROR_UNSUPPORTED_CAM_TYPE:
            Result = XIL_SDNET_CAM_ERR_UNSUPPORTED_CAM_TYPE;
            break;

        case CAM_ERROR_NULL_POINTER:
            Result = XIL_SDNET_CAM_ERR_NULL_POINTER;
            break;

        case CAM_ERROR_TOO_MANY_PCS:
            Result = XIL_SDNET_CAM_ERR_TOO_MANY_PCS;
            break;

        case CAM_ERROR_CONFIGURATION:
            Result = XIL_SDNET_CAM_ERR_CONFIGURATION;
            break;

        case CAM_ERROR_ENVIRONMENT_FSMBUSY:
            Result = XIL_SDNET_CAM_ERR_ENVIRONMENT_FSMBUSY;
            break;

        case CAM_ERROR_ENVIRONMENT_POLLED_OUT:
            Result = XIL_SDNET_CAM_ERR_ENVIRONMENT_POLLED_OUT;
            break;

        default:
            break;
    }

    return Result;
}


static XilSdnetReturnType XilSdnetCamConvertSdnetOptTypeToCamOptValue(XilSdnetCamOptimizationType SdnetOptType, uint32_t *CamOptValuePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    switch (SdnetOptType)
    {
        case XIL_SDNET_CAM_OPTIMIZE_NONE:
            *CamOptValuePtr = CAM_OPTIMIZE_NONE;
            break;
        case XIL_SDNET_CAM_OPTIMIZE_RAM:
            *CamOptValuePtr = CAM_OPTIMIZE_RAM;
            break;
        case XIL_SDNET_CAM_OPTIMIZE_LOGIC:
            *CamOptValuePtr = CAM_OPTIMIZE_LOGIC;
            break;
        default:
            Result = XIL_SDNET_CAM_ERR_OPTIMIZATION_TYPE_UNKNOWN;
            break;
    }

    return Result;
}

static void XilSdnetCamHwWrite(void *CamCtxPtr, uint32_t Offset, uint32_t Data)
{
    XilSdnetCamCtx *CtxPtr = CamCtxPtr;
    XilSdnetEnvIf *EnvIfPtr = NULL;
    XilSdnetAddressType Address = Offset;

    if (CtxPtr != NULL)
    {
        Address += CtxPtr->BaseAddr;
        EnvIfPtr = &(CtxPtr->EnvIf);
    }

    if (EnvIfPtr != NULL)
    {
        EnvIfPtr->WordWrite32(EnvIfPtr, Address, Data);
    }
}

static void XilSdnetCamHwRead(void *CamCtxPtr, uint32_t Offset, uint32_t *DataPtr)
{
    XilSdnetCamCtx *CtxPtr = CamCtxPtr;
    XilSdnetEnvIf *EnvIfPtr = NULL;
    XilSdnetAddressType Address = Offset;

    if (CtxPtr != NULL)
    {
        Address += CtxPtr->BaseAddr;
        EnvIfPtr = &(CtxPtr->EnvIf);
    }

    if ((EnvIfPtr != NULL) && (DataPtr != NULL))
    {
        EnvIfPtr->WordRead32(EnvIfPtr, Address, DataPtr);
    }
}

static void XilSdnetCamLogError(void *CamCtxPtr, char *MessagePtr)
{
    XilSdnetCamCtx *CtxPtr = CamCtxPtr;
    XilSdnetEnvIf *EnvIfPtr = NULL;

    if (CtxPtr != NULL)
    {
        EnvIfPtr = &(CtxPtr->EnvIf);
    }

    if ((EnvIfPtr != NULL) && (MessagePtr != NULL))
    {
        EnvIfPtr->LogError(EnvIfPtr, MessagePtr);
    }
}

static void XilSdnetCamLogInfo(void *CamCtxPtr, char *MessagePtr)
{
    XilSdnetCamCtx *CtxPtr = CamCtxPtr;
    XilSdnetEnvIf *EnvIfPtr = NULL;

    if (CtxPtr != NULL)
    {
        EnvIfPtr = &(CtxPtr->EnvIf);
    }

    if ((EnvIfPtr != NULL) && (MessagePtr != NULL))
    {
        EnvIfPtr->LogInfo(EnvIfPtr, MessagePtr);
    }
}

static XilSdnetReturnType XilSdnetDcamValidateCtx(XilSdnetCamCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetValidateEnvIf(&(CtxPtr->EnvIf));
        if (Result != XIL_SDNET_SUCCESS)
        {
            Result = XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamValidateConfig(XilSdnetCamConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (ConfigPtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if ((ConfigPtr->ResponseSizeBits == 0) || (ConfigPtr->ResponseSizeBits > XIL_SDNET_DCAM_MAX_RESP_SIZE_BITS))
        {
            Result = XIL_SDNET_CAM_ERR_WRONG_RESPONSE_WIDTH;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (ConfigPtr->NumEntries == 0)
        {
            Result = XIL_SDNET_CAM_ERR_INVALID_NUM_ENTRIES;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (ConfigPtr->Endian)
        {
            /* Deliberate fall-through execution to validate parameter */
            case XIL_SDNET_LITTLE_ENDIAN:
            case XIL_SDNET_BIG_ENDIAN:
                break;

            default:
                Result = XIL_SDNET_CAM_ERR_INVALID_ENDIAN;
                break;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamValidateDataBuffer(XilSdnetCamCtx *CtxPtr, uint8_t *DataPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (DataPtr == NULL)
        {
            Result = XIL_SDNET_GENERAL_ERR_NULL_PARAM;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamValidateKey(XilSdnetCamCtx *CtxPtr, uint32_t Key)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Key >= CtxPtr->NumEntries)
        {
            return XIL_SDNET_CAM_ERR_INVALID_KEY;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamGetEntryStatus(XilSdnetCamCtx *CtxPtr, uint32_t Key)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t HitFlag = 0;

    /* Checks */
    Result = XilSdnetDcamValidateCtx(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(CtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Check if hitflag is 1 or 0 */
    Result = CtxPtr->EnvIf.WordWrite32(&(CtxPtr->EnvIf), (CtxPtr->BaseAddr + XIL_SDNET_DCAM_ADDRESS_REG), Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = CtxPtr->EnvIf.WordWrite32(&(CtxPtr->EnvIf), (CtxPtr->BaseAddr + XIL_SDNET_DCAM_CONTROL_STATUS_REG), XIL_SDNET_DCAM_READ);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = CtxPtr->EnvIf.WordRead32(&(CtxPtr->EnvIf), (CtxPtr->BaseAddr + XIL_SDNET_DCAM_CONTROL_STATUS_REG), &HitFlag);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* If flag is set to 0, entry is not in use */
    Result = XIL_SDNET_CAM_ERR_KEY_NOT_FOUND;

    /* If flag is set to 1, entry is in use */
    if ((HitFlag & XIL_SDNET_DCAM_HIT) != 0)
    {
        Result = XIL_SDNET_CAM_ERR_DUPLICATE_FOUND;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamWriteEntry(XilSdnetCamCtx *CtxPtr, uint32_t Key, uint8_t *DataPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetAddressType Address = 0;
    uint32_t DataIndex = 0;
    uint32_t DataOffset = 0;
    uint32_t ByteOffset = 0;
    uint32_t RegValue = 0;

    /* Check input parameters */
    Result = XilSdnetDcamValidateCtx(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(CtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(CtxPtr, DataPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Compute starting address of response data */
    Address = (CtxPtr->BaseAddr + XIL_SDNET_DCAM_DATA_REG_1);

    /* Package byte array into 32-bit chunks for writing to HW memory */
    for (DataIndex = 0; DataIndex < CtxPtr->ResponseBufSizeBytes; DataIndex++)
    {
        ByteOffset = DataIndex % sizeof(uint32_t);

        if (CtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            DataOffset = CtxPtr->ResponseBufSizeBytes - DataIndex - 1;
        }
        else
        {
            DataOffset = DataIndex;
        }

        RegValue |= DataPtr[DataOffset] << (ByteOffset * XIL_SDNET_BITS_PER_BYTE);

        if ((ByteOffset == sizeof(uint32_t) - 1) || (DataIndex == CtxPtr->ResponseBufSizeBytes - 1))
        {
            Result = CtxPtr->EnvIf.WordWrite32(&(CtxPtr->EnvIf), Address, RegValue);
            if (Result != XIL_SDNET_SUCCESS)
            {
                return Result;
            }

            RegValue = 0;
            Address += sizeof(uint32_t);
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamReadEntry(XilSdnetCamCtx *CtxPtr, uint32_t Key, uint8_t *DataPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetAddressType Address = 0;
    uint32_t DataIndex = 0;
    uint32_t DataOffset = 0;
    uint32_t ByteOffset = 0;
    uint32_t RegValue = 0;

    /* Check input parameters */
    Result = XilSdnetDcamValidateCtx(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateKey(CtxPtr, Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetDcamValidateDataBuffer(CtxPtr, DataPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Compute starting address of response data */
    Address = (CtxPtr->BaseAddr + XIL_SDNET_DCAM_DATA_REG_1);

    /* Read data in 32-bit chunks and unpack into provided byte array */
    for (DataIndex = 0; DataIndex < CtxPtr->ResponseBufSizeBytes; DataIndex++)
    {
        ByteOffset = DataIndex % sizeof(uint32_t);

        if (CtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            DataOffset = CtxPtr->ResponseBufSizeBytes - DataIndex - 1;
        }
        else
        {
            DataOffset = DataIndex;
        }

        if (ByteOffset == 0)
        {
            Result = CtxPtr->EnvIf.WordRead32(&(CtxPtr->EnvIf), Address, &RegValue);
            if (Result != XIL_SDNET_SUCCESS)
            {
                return Result;
            }

            Address += sizeof(uint32_t);
        }

        DataPtr[DataOffset] = (RegValue & ((1 << XIL_SDNET_BITS_PER_BYTE) - 1));
        RegValue >>= XIL_SDNET_BITS_PER_BYTE;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetDcamSetEntryStatus(XilSdnetCamCtx *CtxPtr, uint32_t Key, bool Status)
{
    XilSdnetReturnType Result;

    Result = CtxPtr->EnvIf.WordWrite32(&(CtxPtr->EnvIf), (CtxPtr->BaseAddr + XIL_SDNET_DCAM_ADDRESS_REG), Key);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Status == true)
    {
        Result = CtxPtr->EnvIf.WordWrite32(&(CtxPtr->EnvIf), (CtxPtr->BaseAddr + XIL_SDNET_DCAM_CONTROL_STATUS_REG), XIL_SDNET_DCAM_WRITE_AND_HIT);
        if (Result != XIL_SDNET_SUCCESS)
        {
            return Result;
        }
    }
    else
    {
        Result = CtxPtr->EnvIf.WordWrite32(&(CtxPtr->EnvIf), (CtxPtr->BaseAddr + XIL_SDNET_DCAM_CONTROL_STATUS_REG), XIL_SDNET_DCAM_WRITE_AND_CLEAR);
        if (Result != XIL_SDNET_SUCCESS)
        {
            return Result;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetCheckMatch(XilSdnetCamCtx *CtxPtr,
                                             uint8_t *ResponsePtr,
                                             uint8_t *ResponseMaskPtr,
                                             uint8_t *EntryPtr,
                                             bool *MatchFoundPtr)
{
    bool MatchFound = true;
    uint32_t ByteIndex = 0;
    uint32_t X = 0;
    uint32_t Y = 0;
    uint32_t M = 0;
    uint32_t BufSizeBytes = CtxPtr->ResponseBufSizeBytes;
    uint32_t PaddingBits = CtxPtr->ResponsePaddingSizeBits;
    uint8_t PaddingMask = 0;
    uint32_t ByteOffset = 0;

    PaddingMask = 0xFF << (XIL_SDNET_BITS_PER_BYTE - PaddingBits);

    /* Iterate over the data and test for equality of all bits based on the asserted bits in the response mask */
    for (ByteIndex = 0; ByteIndex < BufSizeBytes; ByteIndex++)
    {
        if (CtxPtr->Endian == XIL_SDNET_BIG_ENDIAN)
        {
            ByteOffset = BufSizeBytes - ByteIndex - 1;
        }
        else
        {
            ByteOffset = ByteIndex;
        }

        M = ResponseMaskPtr[ByteOffset];
        X = ResponsePtr[ByteOffset];
        Y = EntryPtr[ByteOffset];

        /* Special case on the last byte - ignore any padding bits in the byte array by forcing them to an equal value */
        if ((PaddingBits != 0) && (ByteIndex == (BufSizeBytes - 1)))
        {
            M |= PaddingMask;
            X |= PaddingMask;
            Y |= PaddingMask;
        }

        /* If a mismatch is detected on any byte, stop and discard */
        if ((X & M) != (Y & M))
        {
            MatchFound = false;
            break;
        }
    }

    *MatchFoundPtr = MatchFound;

    return XIL_SDNET_SUCCESS;
}
