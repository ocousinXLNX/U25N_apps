/*
-- (c) Copyright 2020 Xilinx, Inc. All rights reserved.
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
-- Revision       : $Revision: #2 $
-- Date           : $DateTime: 2020/06/11 15:04:40 $
-- Last Author    : $Author: fmartin $
--
--------------------------------------------------------------------------------
-- Description : Implementation of the SDNet target managemnet drivers
--
--
--------------------------------------------------------------------------------
*/
/****************************************************************************************************************************************************/
/* SECTION: Header includes */
/****************************************************************************************************************************************************/
#include "sdnet_target_mgmt.h"
#include "sdnet_common.h"
#include <stdio.h>
#include <string.h>

/****************************************************************************************************************************************************/
/* SECTION: Constants/macros */
/****************************************************************************************************************************************************/

/* Instance information driver register map */
/* IpVersion Register */
#define XIL_SDNET_BUILD_INFO_VERSION_REG (0x00)
#define XIL_SDNET_BUILD_INFO_VERSION_MAJOR_MASK (0x000000FF)
#define XIL_SDNET_BUILD_INFO_VERSION_MAJOR_SHIFT (0)
#define XIL_SDNET_BUILD_INFO_VERSION_MINOR_MASK (0x0000FF00)
#define XIL_SDNET_BUILD_INFO_VERSION_MINOR_SHIFT (8)
#define XIL_SDNET_BUILD_INFO_VERSION_REVISION_MASK (0x00FF0000)
#define XIL_SDNET_BUILD_INFO_VERSION_REVISON_SHIFT (16)

/* Parameters(Configuration) Register */
#define XIL_SDNET_BUILD_INFO_SETTINGS_REG (0x04)
#define XIL_SDNET_BUILD_INFO_SETTINGS_PKT_RATE_MASK (0x0000003FF)
#define XIL_SDNET_BUILD_INFO_SETTINGS_PKT_RATE_SHIFT (0)
#define XIL_SDNET_BUILD_INFO_SETTINGS_CAM_MEM_CLK_MASK (0x000FFC00)
#define XIL_SDNET_BUILD_INFO_SETTINGS_CAM_MEM_CLK_SHIFT (10)
#define XIL_SDNET_BUILD_INFO_SETTINGS_AXIS_CLK_MASK (0x3FF00000)
#define XIL_SDNET_BUILD_INFO_SETTINGS_AXIS_CLK_SHIFT (20)

/* Interrupt driver constants */
#define XIL_SDNET_INTERRUPT_MAX_NUM_ELEMENTS (128)
#define XIL_SDNET_INTERRUPT_MAX_NUM_FIFOS (16)

#define XIL_SDNET_INTERRUPT_NUM_ECC_INTR_TYPES_PER_OBJECT (2)
#define XIL_SDNET_INTERRUPT_MAX_NUM_ECC_INTERRUPTS \
    ((XIL_SDNET_INTERRUPT_MAX_NUM_ELEMENTS + XIL_SDNET_INTERRUPT_MAX_NUM_FIFOS) * XIL_SDNET_INTERRUPT_NUM_ECC_INTR_TYPES_PER_OBJECT)
/* This calculation OK as long as MAX_NUM_ECC_INTERRUPTS  is a multiple of 32 */
#define XIL_SDNET_INTERRUPT_REGISTER_STRIDE (XIL_SDNET_INTERRUPT_MAX_NUM_ECC_INTERRUPTS / XIL_SDNET_BITS_PER_BYTE)

/* Interrupt driver register map */
#define XIL_SDNET_INTERRUPT_FIFO_STATUS_REG (0x00)
#define XIL_SDNET_INTERRUPT_ELEMENT_STATUS_REG (0x04)

#define XIL_SDNET_INTERRUPT_FIFO_ENABLE_REG (XIL_SDNET_INTERRUPT_FIFO_STATUS_REG + XIL_SDNET_INTERRUPT_REGISTER_STRIDE)
#define XIL_SDNET_INTERRUPT_ELEMENT_ENABLE_REG (XIL_SDNET_INTERRUPT_ELEMENT_STATUS_REG + XIL_SDNET_INTERRUPT_REGISTER_STRIDE)

#define XIL_SDNET_INTERRUPT_FIFO_CLEAR_REG (XIL_SDNET_INTERRUPT_FIFO_ENABLE_REG + XIL_SDNET_INTERRUPT_REGISTER_STRIDE)
#define XIL_SDNET_INTERRUPT_ELEMENT_CLEAR_REG (XIL_SDNET_INTERRUPT_ELEMENT_ENABLE_REG + XIL_SDNET_INTERRUPT_REGISTER_STRIDE)

/****************************************************************************************************************************************************/
/* SECTION: Type definitions */
/****************************************************************************************************************************************************/
struct XilSdnetTargetBuildInfoPrivateCtx
{
    XilSdnetEnvIf EnvIf;
    XilSdnetAddressType BaseAddr;
};

typedef struct XilSdnetTargetInterruptFifoName
{
    char *NameStringPtr;
    uint32_t NameSizeBytes;
} XilSdnetTargetInterruptFifoName;

struct XilSdnetTargetInterruptPrivateCtx
{
    XilSdnetEnvIf EnvIf;
    XilSdnetAddressType BaseAddr;
    uint32_t NumElements;
    uint32_t NumFifos;
    XilSdnetTargetInterruptFifoName *FifoNameListPtr;
};

/****************************************************************************************************************************************************/
/* SECTION: Local function declarations */
/****************************************************************************************************************************************************/
static XilSdnetReturnType XilSdnetTargetBuildInfoValidateCtx(XilSdnetTargetBuildInfoPrivateCtx *CtxPtr);

static XilSdnetReturnType XilSdnetTargetInterruptValidateCtx(XilSdnetTargetInterruptPrivateCtx *CtxPtr);
static XilSdnetReturnType XilSdnetTargetInterruptValidateConfig(XilSdnetTargetInterruptConfig *ConfigPtr);
static XilSdnetReturnType XilSdnetTargetInterruptValidateElementId(XilSdnetTargetInterruptPrivateCtx *CtxPtr, uint32_t ElementId);
static XilSdnetReturnType XilSdnetTargetInterruptValidateEccErrorType(XilSdnetTargetInterruptEccErrorType EccErrorType);
static XilSdnetReturnType XilSdnetGetElementRegOffset(uint32_t ElementId, uint32_t *ElementRegOffsetPtr);
static XilSdnetReturnType XilSdnetGetElementSetRegValue(uint32_t ElementId,
                                                        XilSdnetTargetInterruptEccErrorType EccErrorType,
                                                        uint32_t *ElementRegValuePtr);
static XilSdnetReturnType XilSdnetGetElementClearRegMask(uint32_t ElementId,
                                                         XilSdnetTargetInterruptEccErrorType EccErrorType,
                                                         uint32_t *ElementRegMaskPtr);
static XilSdnetReturnType XilSdnetCovertRegValueToEccStatus(uint32_t RegValue, uint32_t ElementId, XilSdnetTargetInterruptEccErrorStatus *StatusPtr);

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions for Inst Info driver*/
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetTargetBuildInfoInit(XilSdnetTargetBuildInfoCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetBuildInfoConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetBuildInfoPrivateCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if ((CtxPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetValidateEnvIf(EnvIfPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = calloc(1, sizeof(XilSdnetTargetBuildInfoPrivateCtx));
    if (PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_BUILD_INFO_ERR_MALLOC_FAILED;
    }

    memcpy(&(PrivateCtxPtr->EnvIf), EnvIfPtr, sizeof(XilSdnetEnvIf));
    PrivateCtxPtr->BaseAddr = ConfigPtr->BaseAddr;

    CtxPtr->PrivateCtxPtr = PrivateCtxPtr;

    return Result;
}

XilSdnetReturnType XilSdnetTargetBuildInfoGetIpVersion(XilSdnetTargetBuildInfoCtx *CtxPtr, XilSdnetVersion *IpVersionPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetBuildInfoPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t IpVersionRegOffset;
    uint32_t IpVersionRegValue;

    if ((CtxPtr == NULL) || (IpVersionPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetBuildInfoValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    IpVersionRegOffset = PrivateCtxPtr->BaseAddr + XIL_SDNET_BUILD_INFO_VERSION_REG;
    Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), IpVersionRegOffset, &IpVersionRegValue);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    IpVersionPtr->Major = (IpVersionRegValue & XIL_SDNET_BUILD_INFO_VERSION_MAJOR_MASK) >> XIL_SDNET_BUILD_INFO_VERSION_MAJOR_SHIFT;
    IpVersionPtr->Minor = (IpVersionRegValue & XIL_SDNET_BUILD_INFO_VERSION_MINOR_MASK) >> XIL_SDNET_BUILD_INFO_VERSION_MINOR_SHIFT;
    IpVersionPtr->Revision = (IpVersionRegValue & XIL_SDNET_BUILD_INFO_VERSION_REVISION_MASK) >> XIL_SDNET_BUILD_INFO_VERSION_REVISON_SHIFT;

    return Result;
}

XilSdnetReturnType XilSdnetTargetBuildInfoGetIpSettings(XilSdnetTargetBuildInfoCtx *CtxPtr, XilSdnetTargetBuildInfoIpSettings *IpSettingsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetBuildInfoPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t RegOffset;
    uint32_t RegValue;

    if ((CtxPtr == NULL) || (IpSettingsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetBuildInfoValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    RegOffset = PrivateCtxPtr->BaseAddr + XIL_SDNET_BUILD_INFO_SETTINGS_REG;
    Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegOffset, &RegValue);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    IpSettingsPtr->PacketRateMps = (RegValue & XIL_SDNET_BUILD_INFO_SETTINGS_PKT_RATE_MASK) >> XIL_SDNET_BUILD_INFO_SETTINGS_PKT_RATE_SHIFT;
    IpSettingsPtr->CamMemoryClockMhz = (RegValue & XIL_SDNET_BUILD_INFO_SETTINGS_CAM_MEM_CLK_MASK) >> XIL_SDNET_BUILD_INFO_SETTINGS_CAM_MEM_CLK_SHIFT;
    IpSettingsPtr->AxiStreamClockMhz = (RegValue & XIL_SDNET_BUILD_INFO_SETTINGS_AXIS_CLK_MASK) >> XIL_SDNET_BUILD_INFO_SETTINGS_AXIS_CLK_SHIFT;

    return Result;
}

XilSdnetReturnType XilSdnetTargetBuildInfoExit(XilSdnetTargetBuildInfoCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetBuildInfoValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    free(CtxPtr->PrivateCtxPtr);
    CtxPtr->PrivateCtxPtr = NULL;

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions for Intr driver*/
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetTargetInterruptInit(XilSdnetTargetInterruptCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetInterruptConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTargetInterruptFifoName *FifoNameListPtr = NULL;
    XilSdnetTargetInterruptFifoName *FifoNamePtr = NULL;
    char *FifoNameStringPtr = NULL;
    uint32_t NumFifos;
    uint32_t FifoIndex;

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

    Result = XilSdnetTargetInterruptValidateConfig(ConfigPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = calloc(1, sizeof(XilSdnetTargetInterruptPrivateCtx));
    if (PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_INTERRUPT_ERR_MALLOC_FAILED;
    }

    NumFifos = ConfigPtr->NumFifos;
    /* Allocating array to hold FIFO names */
    FifoNameListPtr = calloc(ConfigPtr->NumFifos, sizeof(XilSdnetTargetInterruptFifoName));
    if (FifoNameListPtr == NULL)
    {
        Result = XIL_SDNET_INTERRUPT_ERR_MALLOC_FAILED;
        goto fail_fifo_name_list_alloc;
    }

    for (FifoIndex = 0; FifoIndex < NumFifos; FifoIndex++)
    {
        FifoNameStringPtr = ConfigPtr->FifoNameList[FifoIndex].NameStringPtr;
        FifoNamePtr = &(FifoNameListPtr[FifoIndex]);

        FifoNamePtr->NameSizeBytes = strlen(FifoNameStringPtr) + 1;
        if (FifoNamePtr->NameSizeBytes == 1)
        {
            Result = XIL_SDNET_INTERRUPT_ERR_CONFIG_INVALID_FIFO_NAME;
            goto fail_fifo_name_list_init_copy;
        }

        FifoNamePtr->NameStringPtr = calloc(1, FifoNamePtr->NameSizeBytes);
        if (FifoNamePtr->NameStringPtr == NULL)
        {
            Result = XIL_SDNET_INTERRUPT_ERR_MALLOC_FAILED;
            goto fail_fifo_name_list_init_copy;
        }

        memcpy(FifoNamePtr->NameStringPtr, FifoNameStringPtr, FifoNamePtr->NameSizeBytes);
    }

    memcpy(&(PrivateCtxPtr->EnvIf), EnvIfPtr, sizeof(XilSdnetEnvIf));

    PrivateCtxPtr->BaseAddr = ConfigPtr->BaseAddr;
    PrivateCtxPtr->NumElements = ConfigPtr->NumElements;

    PrivateCtxPtr->NumFifos = ConfigPtr->NumFifos;
    PrivateCtxPtr->FifoNameListPtr = FifoNameListPtr;

    CtxPtr->PrivateCtxPtr = PrivateCtxPtr;

    return Result;

fail_fifo_name_list_init_copy:
    while (FifoIndex-- != 0)
    {
        FifoNamePtr = &(FifoNameListPtr[FifoIndex]);
        ;
        free(FifoNamePtr->NameStringPtr);
    }
    free(FifoNameListPtr);
fail_fifo_name_list_alloc:
    free(PrivateCtxPtr);

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptEnableElementEccErrorById(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                    uint32_t ElementId,
                                                                    XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ElementRegOffset;
    uint32_t ElementRegValue;
    uint32_t RegValue;
    uint32_t RegAddr;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }
    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetTargetInterruptValidateElementId(PrivateCtxPtr, ElementId);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetTargetInterruptValidateEccErrorType(EccErrorType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementRegOffset(ElementId, &ElementRegOffset);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementSetRegValue(ElementId, EccErrorType, &ElementRegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_ELEMENT_ENABLE_REG + ElementRegOffset;
        Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegAddr, &RegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegValue = RegValue | ElementRegValue;
        Result = PrivateCtxPtr->EnvIf.WordWrite32(&(PrivateCtxPtr->EnvIf), RegAddr, RegValue);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptDisableElementEccErrorById(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                     uint32_t ElementId,
                                                                     XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ElementRegOffset;
    uint32_t ElementRegMask;
    uint32_t RegValue;
    uint32_t RegAddr;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }
    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetTargetInterruptValidateElementId(PrivateCtxPtr, ElementId);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetTargetInterruptValidateEccErrorType(EccErrorType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementRegOffset(ElementId, &ElementRegOffset);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementClearRegMask(ElementId, EccErrorType, &ElementRegMask);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_ELEMENT_ENABLE_REG + ElementRegOffset;
        Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegAddr, &RegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegValue = RegValue & ElementRegMask;
        Result = PrivateCtxPtr->EnvIf.WordWrite32(&(PrivateCtxPtr->EnvIf), RegAddr, RegValue);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptGetElementEccErrorStatusById(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                       uint32_t ElementId,
                                                                       XilSdnetTargetInterruptEccErrorStatus *StatusPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ElementRegOffset;
    uint32_t RegAddr;
    uint32_t RegValue;

    if ((CtxPtr == NULL) || (StatusPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }
    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetTargetInterruptValidateElementId(PrivateCtxPtr, ElementId);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementRegOffset(ElementId, &ElementRegOffset);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_ELEMENT_STATUS_REG + ElementRegOffset;
        Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegAddr, &RegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetCovertRegValueToEccStatus(RegValue, ElementId, StatusPtr);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptClearElementEccErrorStatusById(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                         uint32_t ElementId,
                                                                         XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ElementRegOffset;
    uint32_t ElementRegValue;
    uint32_t RegAddr;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }
    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    Result = XilSdnetTargetInterruptValidateElementId(PrivateCtxPtr, ElementId);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    Result = XilSdnetTargetInterruptValidateEccErrorType(EccErrorType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementRegOffset(ElementId, &ElementRegOffset);
    }

    /* To clearing Status means writing a one to the bit so to clear we get the set value */
    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementSetRegValue(ElementId, EccErrorType, &ElementRegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_ELEMENT_CLEAR_REG + ElementRegOffset;
        Result = PrivateCtxPtr->EnvIf.WordWrite32(&(PrivateCtxPtr->EnvIf), RegAddr, ElementRegValue);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptGetElementCount(XilSdnetTargetInterruptCtx *CtxPtr, uint32_t *NumElementsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if ((CtxPtr == NULL) || (NumElementsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    *NumElementsPtr = PrivateCtxPtr->NumElements;

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptGetFifoCount(XilSdnetTargetInterruptCtx *CtxPtr, uint32_t *NumFifosPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;

    /* Check input parameters */
    if ((CtxPtr == NULL) || (NumFifosPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    *NumFifosPtr = PrivateCtxPtr->NumFifos;

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptGetFifoIndexByName(XilSdnetTargetInterruptCtx *CtxPtr, char *FifoNamePtr, uint32_t *IndexPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t FifoIndex;
    XilSdnetTargetInterruptFifoName *ListFifoNamePtr = NULL;
    int StrcmpResult = 0;

    /* Check input parameters */
    if ((CtxPtr == NULL) || (FifoNamePtr == NULL) || (IndexPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    /* Assumes no match by default - overriden if a match is found */
    Result = XIL_SDNET_INTERRUPT_ERR_FIFO_NOT_FOUND;
    for (FifoIndex = 0; FifoIndex < PrivateCtxPtr->NumFifos; FifoIndex++)
    {
        ListFifoNamePtr = &(PrivateCtxPtr->FifoNameListPtr[FifoIndex]);
        StrcmpResult = strncmp(FifoNamePtr, ListFifoNamePtr->NameStringPtr, ListFifoNamePtr->NameSizeBytes + 2);
        if (StrcmpResult == 0)
        {
            /* Assumes TableIndex and ElementID are the same, which is valid until more P4 elements are supportted */
            *IndexPtr = FifoIndex;
            Result = XIL_SDNET_SUCCESS;
            break;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptGetFifoNameByIndex(XilSdnetTargetInterruptCtx *CtxPtr,
                                                             uint32_t *IndexPtr,
                                                             char *FifoNamePtr,
                                                             uint32_t FifoNameNumBytes)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTargetInterruptFifoName *ListFifoNamePtr = NULL;

    /* Check input parameters */
    if ((CtxPtr == NULL) || (IndexPtr == NULL) || (FifoNamePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    // Add Check for NumBytes > 0

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (*IndexPtr >= PrivateCtxPtr->NumFifos)
    {
        return XIL_SDNET_INTERRUPT_ERR_FIFO_NOT_FOUND;
    }

    ListFifoNamePtr = &(PrivateCtxPtr->FifoNameListPtr[*IndexPtr]);

    if (FifoNameNumBytes < ListFifoNamePtr->NameSizeBytes)
    {
        return XIL_SDNET_INTERRUPT_ERR_NAME_BUFFER_TOO_SMALL;
    }

    memcpy(FifoNamePtr, ListFifoNamePtr->NameStringPtr, ListFifoNamePtr->NameSizeBytes);
    (*IndexPtr)++;

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptEnableFifoEccErrorByIndex(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                    uint32_t FifoIndex,
                                                                    XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ValueForIndex;
    uint32_t RegValue;
    uint32_t RegAddr;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (FifoIndex >= PrivateCtxPtr->NumFifos)
    {
        return XIL_SDNET_INTERRUPT_ERR_INVALID_FIFO_INDEX;
    }

    Result = XilSdnetTargetInterruptValidateEccErrorType(EccErrorType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementSetRegValue(FifoIndex, EccErrorType, &ValueForIndex);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_FIFO_ENABLE_REG;
        Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegAddr, &RegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegValue = RegValue | ValueForIndex;
        Result = PrivateCtxPtr->EnvIf.WordWrite32(&(PrivateCtxPtr->EnvIf), RegAddr, RegValue);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptDisableFifoEccErrorByIndex(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                     uint32_t FifoIndex,
                                                                     XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t IndexRegMask;
    uint32_t RegValue;
    uint32_t RegAddr;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (FifoIndex >= PrivateCtxPtr->NumFifos)
    {
        return XIL_SDNET_INTERRUPT_ERR_INVALID_FIFO_INDEX;
    }

    Result = XilSdnetTargetInterruptValidateEccErrorType(EccErrorType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementClearRegMask(FifoIndex, EccErrorType, &IndexRegMask);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_FIFO_ENABLE_REG;
        Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegAddr, &RegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegValue = RegValue & IndexRegMask;
        Result = PrivateCtxPtr->EnvIf.WordWrite32(&(PrivateCtxPtr->EnvIf), RegAddr, RegValue);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptGetFifoEccErrorStatusByIndex(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                       uint32_t FifoIndex,
                                                                       XilSdnetTargetInterruptEccErrorStatus *StatusPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t RegAddr;
    uint32_t RegValue;

    /* Check input parameters */
    if ((CtxPtr == NULL) || (StatusPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (FifoIndex >= PrivateCtxPtr->NumFifos)
    {
        return XIL_SDNET_INTERRUPT_ERR_INVALID_FIFO_INDEX;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_FIFO_STATUS_REG;
        Result = PrivateCtxPtr->EnvIf.WordRead32(&(PrivateCtxPtr->EnvIf), RegAddr, &RegValue);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetCovertRegValueToEccStatus(RegValue, FifoIndex, StatusPtr);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptClearFifoEccErrorStatusByIndex(XilSdnetTargetInterruptCtx *CtxPtr,
                                                                         uint32_t FifoIndex,
                                                                         XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ValueForIndex;
    uint32_t RegAddr;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (FifoIndex >= PrivateCtxPtr->NumFifos)
    {
        return XIL_SDNET_INTERRUPT_ERR_INVALID_FIFO_INDEX;
    }

    Result = XilSdnetTargetInterruptValidateEccErrorType(EccErrorType);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    if (FifoIndex >= PrivateCtxPtr->NumFifos)
    {
        return XIL_SDNET_INTERRUPT_ERR_INVALID_FIFO_INDEX;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetGetElementSetRegValue(FifoIndex, EccErrorType, &ValueForIndex);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        RegAddr = PrivateCtxPtr->BaseAddr + XIL_SDNET_INTERRUPT_FIFO_CLEAR_REG;
        Result = PrivateCtxPtr->EnvIf.WordWrite32(&(PrivateCtxPtr->EnvIf), RegAddr, ValueForIndex);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetInterruptExit(XilSdnetTargetInterruptCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetInterruptPrivateCtx *PrivateCtxPtr = NULL;
    uint32_t FifoIndex;
    XilSdnetTargetInterruptFifoName *FifoNamePtr = NULL;

    /* Check input parameters */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetTargetInterruptValidateCtx(CtxPtr->PrivateCtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    for (FifoIndex = 0; FifoIndex < PrivateCtxPtr->NumFifos; FifoIndex++)
    {
        FifoNamePtr = &(PrivateCtxPtr->FifoNameListPtr[FifoIndex]);
        free(FifoNamePtr->NameStringPtr);
        FifoNamePtr->NameSizeBytes = 0;
    }
    free(PrivateCtxPtr->FifoNameListPtr);

    free(CtxPtr->PrivateCtxPtr);
    CtxPtr->PrivateCtxPtr = NULL;

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Local function definitions */
/****************************************************************************************************************************************************/
static XilSdnetReturnType XilSdnetTargetBuildInfoValidateCtx(XilSdnetTargetBuildInfoPrivateCtx *CtxPtr)
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

static XilSdnetReturnType XilSdnetTargetInterruptValidateCtx(XilSdnetTargetInterruptPrivateCtx *CtxPtr)
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

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (CtxPtr->NumElements > XIL_SDNET_INTERRUPT_MAX_NUM_ELEMENTS)
        {
            Result = XIL_SDNET_INTERRUPT_ERR_CONFIG_MAX_NUM_ELEMENTS_EXCEED;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTargetInterruptValidateConfig(XilSdnetTargetInterruptConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t FifoIndex;

    if (ConfigPtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (ConfigPtr->NumElements > XIL_SDNET_INTERRUPT_MAX_NUM_ELEMENTS)
        {
            Result = XIL_SDNET_INTERRUPT_ERR_CONFIG_MAX_NUM_ELEMENTS_EXCEED;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (ConfigPtr->NumFifos > XIL_SDNET_INTERRUPT_MAX_NUM_FIFOS)
        {
            Result = XIL_SDNET_INTERRUPT_ERR_CONFIG_MAX_NUM_FIFOS_EXCEED;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (ConfigPtr->NumFifos > 0)
        {
            for (FifoIndex = 0; FifoIndex < ConfigPtr->NumFifos; FifoIndex++)
            {
                if (ConfigPtr->FifoNameList[FifoIndex].NameStringPtr == NULL)
                {
                    Result = XIL_SDNET_INTERRUPT_ERR_CONFIG_INVALID_FIFO_NAME;
                    break;
                }
            }
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTargetInterruptValidateElementId(XilSdnetTargetInterruptPrivateCtx *CtxPtr, uint32_t ElementId)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (ElementId >= CtxPtr->NumElements)
    {
        Result = XIL_SDNET_INTERRUPT_ERR_INVALID_ELEMENT_ID;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTargetInterruptValidateEccErrorType(XilSdnetTargetInterruptEccErrorType EccErrorType)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((EccErrorType >= XIL_SDNET_INTERRUPT_ECC_ERROR_TYPE_MAX) || (EccErrorType < 0))
    {
        Result = XIL_SDNET_INTERRUPT_ERR_INVALID_ECC_ERROR_TYPE;
    }

    return Result;
}
static XilSdnetReturnType XilSdnetGetElementRegOffset(uint32_t ElementId, uint32_t *ElementRegOffsetPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t NumRegs;

    if (ElementRegOffsetPtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
        return Result;
    }

    NumRegs = (ElementId * XIL_SDNET_INTERRUPT_NUM_ECC_INTR_TYPES_PER_OBJECT) / XIL_SDNET_BITS_PER_REG;
    *ElementRegOffsetPtr = NumRegs * XIL_SDNET_BYTES_PER_REG;

    return Result;
}

static XilSdnetReturnType XilSdnetGetElementSetRegValue(uint32_t ElementId,
                                                        XilSdnetTargetInterruptEccErrorType EccErrorType,
                                                        uint32_t *ElementRegValuePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t ObjectValue;
    uint32_t ObjectRegShift;

    if (ElementRegValuePtr == NULL)
    {
        Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
        return Result;
    }

    ObjectRegShift = (ElementId * XIL_SDNET_INTERRUPT_NUM_ECC_INTR_TYPES_PER_OBJECT) % XIL_SDNET_BITS_PER_REG;

    switch (EccErrorType)
    {
        case XIL_SDNET_INTERRUPT_ECC_ERROR_SINGLE_BIT:
            ObjectValue = 0x1;
            break;
        case XIL_SDNET_INTERRUPT_ECC_ERROR_DOUBLE_BIT:
            ObjectValue = 0x2;
            break;
        case XIL_SDNET_INTERRUPT_ECC_ERROR_ALL:
            ObjectValue = 0x3; /* Both bits are set */
            break;
        default:
            Result = XIL_SDNET_INTERRUPT_ERR_INVALID_ECC_ERROR_TYPE;
            break;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        *ElementRegValuePtr = ObjectValue << ObjectRegShift;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetGetElementClearRegMask(uint32_t ElementId,
                                                         XilSdnetTargetInterruptEccErrorType EccErrorType,
                                                         uint32_t *ElementRegMaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    Result = XilSdnetGetElementSetRegValue(ElementId, EccErrorType, ElementRegMaskPtr);
    if (Result == XIL_SDNET_SUCCESS)
    {
        *ElementRegMaskPtr = ~(*ElementRegMaskPtr);
    }

    return Result;
}

static XilSdnetReturnType XilSdnetCovertRegValueToEccStatus(uint32_t RegValue, uint32_t ElementId, XilSdnetTargetInterruptEccErrorStatus *StatusPtr)
{
    uint32_t RShift;
    uint32_t StatusValue;

    RShift = (ElementId * XIL_SDNET_INTERRUPT_NUM_ECC_INTR_TYPES_PER_OBJECT) % XIL_SDNET_BITS_PER_REG;
    StatusValue = (RegValue >> RShift) & 3;

    if ((StatusValue & 0x1) == 0x1)
    {
        StatusPtr->SingleBitErrorStatus = true;
    }
    else
    {
        StatusPtr->SingleBitErrorStatus = false;
    }

    if ((StatusValue & 0x2) == 0x2)
    {
        StatusPtr->DoubleBitErrorStatus = true;
    }
    else
    {
        StatusPtr->DoubleBitErrorStatus = false;
    }

    return XIL_SDNET_SUCCESS;
}
