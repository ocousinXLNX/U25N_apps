/*
-- (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
-- Revision       : $Revision: #3 $
-- Date           : $DateTime: 2020/05/27 12:35:12 $
-- Last Author    : $Author: fmartin $
--
--------------------------------------------------------------------------------
-- Description : Implementation of the SDNet table driver
--
--------------------------------------------------------------------------------
*/
/****************************************************************************************************************************************************/
/* SECTION: Header includes */
/****************************************************************************************************************************************************/

#include "sdnet_table.h"
#include <stdbool.h>
#include <string.h>

/****************************************************************************************************************************************************/
/* SECTION: Type definitions */
/****************************************************************************************************************************************************/

typedef union XilSdnetCamDriverUnion
{
    XilSdnetDcamCtx     DcamCtx;
    XilSdnetBcamCtx     BcamCtx;
    XilSdnetTcamCtx     TcamCtx;
    XilSdnetStcamCtx    StcamCtx;
} XilSdnetCamDriverUnion;

typedef struct XilSdnetTableName
{
    char        *StringPtr;
    uint32_t    NumBytes;
} XilSdnetTableName;

struct XilSdnetTablePrivateCtx
{
    /* Action name must be ordered so the Id equals the index */
    uint32_t            NumActions;
    XilSdnetTableName   *ActionNameArrayPtr;

    /* Internal buffers - used to reformat data from application before passing to CAM driver */
    uint8_t *KeyPtr;
    uint8_t *MaskPtr;
    uint8_t *ResponsePtr;
    uint8_t *ResponseMaskPtr;

    /* Sizing information needed for the above reformatting */
    uint32_t ActionParamsSizeBits;
    uint32_t ActionParamsSizeBytes;
    uint32_t ActionIdWidthBits;
    uint32_t KeySizeBits;
    uint32_t KeySizeBytes;
    uint32_t ResponseSizeBytes;

    /* Configures the type of reformatting needed */
    XilSdnetEndian Endian;

    /* CAM driver context structure */
    XilSdnetCamDriverUnion CamDriver;

    /* Pointers to the CAM driver context to life a little easier - only one is valid, all others are NULL */
    XilSdnetDcamCtx     *DcamCtxPtr;
    XilSdnetBcamCtx     *BcamCtxPtr;
    XilSdnetTcamCtx     *TcamCtxPtr;
    XilSdnetStcamCtx    *StcamCtxPtr;

    /* Mode used to determine which driver pointer to select */
    XilSdnetTableMode Mode;
};

/****************************************************************************************************************************************************/
/* SECTION: Local function declarations: utility functions for setup and teardown */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetTableCreateCamDrv(XilSdnetTablePrivateCtx *PrivateCtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTableConfig *ConfigPtr);

static XilSdnetReturnType XilSdnetTableDestroyCamDrv(XilSdnetTablePrivateCtx *PrivateCtxPtr);

static XilSdnetReturnType XilSdnetTableCreateActionArray(XilSdnetTablePrivateCtx *PrivateCtxPtr, XilSdnetTableConfig *ConfigPtr);

static void XilSdnetTableDestroyActionArray(XilSdnetTablePrivateCtx *PrivateCtxPtr);

static XilSdnetReturnType XilSdnetTableCreateInternalBuffers(XilSdnetTablePrivateCtx *PrivateCtxPtr, XilSdnetTableConfig *ConfigPtr);

static void XilSdnetTableDestroyInternalBuffers(XilSdnetTablePrivateCtx *PrivateCtxPtr);

static XilSdnetReturnType XilSdnetTableAllocateNameFromString(XilSdnetTableName *DestNamePtr, char *SrcStringPtr);

static void XilSdnetTableDestroyName(XilSdnetTableName *NamePtr);

/****************************************************************************************************************************************************/
/* SECTION: Local function declarations: utility functions for data reformatting */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetTableKeyFormat(XilSdnetTablePrivateCtx *PrivateCtxPtr, uint8_t *SrcDataPtr, uint8_t *DstDataPtr);

static XilSdnetReturnType XilSdnetTableDcamKeyDown(XilSdnetTablePrivateCtx *PrivateCtxPtr, uint8_t *SrcDataPtr, uint32_t *DstDataPtr);

static XilSdnetReturnType XilSdnetTableDcamKeyUp(XilSdnetTablePrivateCtx *PrivateCtxPtr, uint32_t SrcData, uint8_t *DstDataPtr);

static XilSdnetReturnType XilSdnetTableResponseDown(XilSdnetTablePrivateCtx *PrivateCtxPtr,
                                                    uint8_t *ActionParamsPtr,
                                                    uint32_t ActionId,
                                                    uint8_t *ResponsePtr);

static XilSdnetReturnType XilSdnetTableResponseUp(XilSdnetTablePrivateCtx *PrivateCtxPtr,
                                                  uint8_t *ResponsePtr,
                                                  uint8_t *ActionParamsPtr,
                                                  uint32_t *ActionIdPtr);

/****************************************************************************************************************************************************/
/* SECTION: Local function declarations: utility functions to simplify implementation */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetValidateTableCtxForDrvCall(XilSdnetTableCtx *CtxPtr);

static XilSdnetReturnType XilSdnetTableValidatePtrNullForBcamDcam(XilSdnetTableMode Mode, uint8_t *Ptr);

static XilSdnetReturnType XilSdnetTableNameMatchesString(XilSdnetTableName *NamePtr, char *StringNamePtr, bool *StringMatchesNamePtr);

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetTableInit(XilSdnetTableCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTableConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;

    if ((CtxPtr == NULL) || (EnvIfPtr == NULL) || (ConfigPtr == NULL))
    {
        Result = XIL_SDNET_GENERAL_ERR_NULL_PARAM;
        goto fail_param_check;
    }

    /* Create the main context structure for this instance */
    PrivateCtxPtr = calloc(1, sizeof(XilSdnetTablePrivateCtx));
    if (PrivateCtxPtr == NULL)
    {
        Result = XIL_SDNET_TABLE_ERR_MALLOC_FAILED;
        goto fail_alloc_private_ctx;
    }

    /* Set up the cam driver instance */
    Result = XilSdnetTableCreateCamDrv(PrivateCtxPtr, EnvIfPtr, ConfigPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_create_cam_drv;
    }

    /* Cache the action names */
    Result = XilSdnetTableCreateActionArray(PrivateCtxPtr, ConfigPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_create_action_array;
    }

    /* Create internal buffers for data reformatting */
    Result = XilSdnetTableCreateInternalBuffers(PrivateCtxPtr, ConfigPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        goto fail_create_internal_buffers;
    }

    CtxPtr->PrivateCtxPtr = PrivateCtxPtr;

    return Result;

fail_create_internal_buffers:
    XilSdnetTableDestroyActionArray(PrivateCtxPtr);
fail_create_action_array:
    XilSdnetTableDestroyCamDrv(PrivateCtxPtr);
fail_create_cam_drv:
    free(PrivateCtxPtr);
    CtxPtr->PrivateCtxPtr = NULL;
fail_alloc_private_ctx:
fail_param_check:
    return Result;
}

XilSdnetReturnType XilSdnetTableGetMode(XilSdnetTableCtx *CtxPtr, XilSdnetTableMode *TableModePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (TableModePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    *TableModePtr = CtxPtr->PrivateCtxPtr->Mode;

    return Result;
}

XilSdnetReturnType XilSdnetTableGetNumActions(XilSdnetTableCtx *CtxPtr, uint32_t *NumActionsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (NumActionsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    *NumActionsPtr = CtxPtr->PrivateCtxPtr->NumActions;

    return Result;
}

XilSdnetReturnType XilSdnetTableGetKeySizeBits(XilSdnetTableCtx *CtxPtr, uint32_t *KeySizeBitsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (KeySizeBitsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    *KeySizeBitsPtr = CtxPtr->PrivateCtxPtr->KeySizeBits;

    return Result;
}

XilSdnetReturnType XilSdnetTableGetActionParamsSizeBits(XilSdnetTableCtx *CtxPtr, uint32_t *ActionParamsSizeBitsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (ActionParamsSizeBitsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    *ActionParamsSizeBitsPtr = CtxPtr->PrivateCtxPtr->ActionParamsSizeBits;

    return Result;
}

XilSdnetReturnType XilSdnetTableGetActionIdWidthBits(XilSdnetTableCtx *CtxPtr, uint32_t *ActionIdWidthBitsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (ActionIdWidthBitsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    *ActionIdWidthBitsPtr = CtxPtr->PrivateCtxPtr->ActionIdWidthBits;

    return Result;
}

XilSdnetReturnType XilSdnetTableGetActionId(XilSdnetTableCtx *CtxPtr, char *ActionNamePtr, uint32_t *ActionIdPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTableName *ActionNameArrayPtr = NULL;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    uint32_t ActionIndex = 0;
    bool MatchFound = false;

    if ((CtxPtr == NULL) || (ActionNamePtr == NULL) || (ActionIdPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    ActionNameArrayPtr = PrivateCtxPtr->ActionNameArrayPtr;
    for (ActionIndex = 0; ActionIndex < PrivateCtxPtr->NumActions; ActionIndex++)
    {
        Result = XilSdnetTableNameMatchesString(&ActionNameArrayPtr[ActionIndex], ActionNamePtr, &MatchFound);
        if (Result != XIL_SDNET_SUCCESS)
        {
            return Result;
        }

        if (MatchFound == true)
        {
            *ActionIdPtr = ActionIndex;
            break;
        }
    }

    if (MatchFound == false)
    {
        Result = XIL_SDNET_TABLE_ERR_ACTION_NOT_FOUND;
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableGetActionNameById(XilSdnetTableCtx *CtxPtr,
                                                  uint32_t ActionId,
                                                  char *ActionNamePtr,
                                                  uint32_t ActionNameNumBytes)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTableName *TableActionNamePtr = NULL;

    if ((CtxPtr == NULL) || (ActionNamePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    if (ActionId >= CtxPtr->PrivateCtxPtr->NumActions)
    {
        return XIL_SDNET_TABLE_ERR_INVALID_ACTION_ID;
    }

    TableActionNamePtr = &(CtxPtr->PrivateCtxPtr->ActionNameArrayPtr[ActionId]);
    if (TableActionNamePtr->NumBytes > ActionNameNumBytes)
    {
        return XIL_SDNET_TABLE_ERR_NAME_BUFFER_TOO_SMALL;
    }

    memcpy(ActionNamePtr, TableActionNamePtr->StringPtr, TableActionNamePtr->NumBytes);

    return Result;
}

XilSdnetReturnType XilSdnetTableInsert(XilSdnetTableCtx *CtxPtr,
                                       uint8_t *KeyPtr,
                                       uint8_t *MaskPtr,
                                       uint32_t Priority,
                                       uint32_t ActionId,
                                       uint8_t *ActionParamsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;
    uint32_t DcamKey = 0;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    Result = XilSdnetTableValidatePtrNullForBcamDcam(Mode, MaskPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* check remaining buffers */
    if ((KeyPtr == NULL) || (ActionParamsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (ActionId >= PrivateCtxPtr->NumActions)
    {
        return XIL_SDNET_TABLE_ERR_INVALID_ACTION_ID;
    }

    if (Mode == XIL_SDNET_TABLE_MODE_DCAM)
    {
        Result = XilSdnetTableDcamKeyDown(PrivateCtxPtr, KeyPtr, &DcamKey);
    }
    else
    {
        Result = XilSdnetTableKeyFormat(PrivateCtxPtr, KeyPtr, PrivateCtxPtr->KeyPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Mode == XIL_SDNET_TABLE_MODE_TCAM || (Mode == XIL_SDNET_TABLE_MODE_STCAM))
        {
            Result = XilSdnetTableKeyFormat(PrivateCtxPtr, MaskPtr, PrivateCtxPtr->MaskPtr);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTableResponseDown(PrivateCtxPtr, ActionParamsPtr, ActionId, PrivateCtxPtr->ResponsePtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                Result = XilSdnetDcamInsert(PrivateCtxPtr->DcamCtxPtr, DcamKey, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                Result = XilSdnetBcamInsert(PrivateCtxPtr->BcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                Result = XilSdnetStcamInsert(PrivateCtxPtr->StcamCtxPtr,
                                             PrivateCtxPtr->KeyPtr,
                                             PrivateCtxPtr->MaskPtr,
                                             Priority,
                                             PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                Result = XilSdnetTcamInsert(PrivateCtxPtr->TcamCtxPtr,
                                            PrivateCtxPtr->KeyPtr,
                                            PrivateCtxPtr->MaskPtr,
                                            Priority,
                                            PrivateCtxPtr->ResponsePtr);
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableUpdate(XilSdnetTableCtx *CtxPtr,
                                       uint8_t *KeyPtr,
                                       uint8_t *MaskPtr,
                                       uint32_t ActionId,
                                       uint8_t *ActionParamsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;
    uint32_t DcamKey = 0;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    Result = XilSdnetTableValidatePtrNullForBcamDcam(Mode, MaskPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* check remaining buffers */
    if ((KeyPtr == NULL) || (ActionParamsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (ActionId >= PrivateCtxPtr->NumActions)
    {
        return XIL_SDNET_TABLE_ERR_INVALID_ACTION_ID;
    }

    if (Mode == XIL_SDNET_TABLE_MODE_DCAM)
    {
        Result = XilSdnetTableDcamKeyDown(PrivateCtxPtr, KeyPtr, &DcamKey);
    }
    else
    {
        Result = XilSdnetTableKeyFormat(PrivateCtxPtr, KeyPtr, PrivateCtxPtr->KeyPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Mode == XIL_SDNET_TABLE_MODE_TCAM || (Mode == XIL_SDNET_TABLE_MODE_STCAM))
        {
            Result = XilSdnetTableKeyFormat(PrivateCtxPtr, MaskPtr, PrivateCtxPtr->MaskPtr);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTableResponseDown(PrivateCtxPtr, ActionParamsPtr, ActionId, PrivateCtxPtr->ResponsePtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                Result = XilSdnetDcamUpdate(PrivateCtxPtr->DcamCtxPtr, DcamKey, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                Result = XilSdnetBcamUpdate(PrivateCtxPtr->BcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                Result = XilSdnetStcamUpdate(PrivateCtxPtr->StcamCtxPtr,
                                             PrivateCtxPtr->KeyPtr,
                                             PrivateCtxPtr->MaskPtr,
                                             PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                Result = XilSdnetTcamUpdate(PrivateCtxPtr->TcamCtxPtr,
                                            PrivateCtxPtr->KeyPtr,
                                            PrivateCtxPtr->MaskPtr, PrivateCtxPtr->ResponsePtr);
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableGetByResponse(XilSdnetTableCtx *CtxPtr,
                                              uint32_t ActionId,
                                              uint8_t *ActionParamsPtr,
                                              uint8_t *ActionParamsMaskPtr,
                                              uint32_t *PositionPtr,
                                              uint8_t *KeyPtr,
                                              uint8_t *MaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;
    uint32_t DcamKey = 0;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    Result = XilSdnetTableValidatePtrNullForBcamDcam(Mode, MaskPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* check remaining buffers */
    if ((ActionParamsPtr == NULL) || (ActionParamsMaskPtr == NULL) || (PositionPtr == NULL) || (KeyPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (ActionId >= PrivateCtxPtr->NumActions)
    {
        return XIL_SDNET_TABLE_ERR_INVALID_ACTION_ID;
    }

    Result = XilSdnetTableResponseDown(PrivateCtxPtr, ActionParamsPtr, ActionId, PrivateCtxPtr->ResponsePtr);
    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTableResponseDown(PrivateCtxPtr, ActionParamsMaskPtr, 0xFFFFFFFF, PrivateCtxPtr->ResponseMaskPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                Result = XilSdnetDcamGetByResponse(PrivateCtxPtr->DcamCtxPtr,
                                                   PrivateCtxPtr->ResponsePtr,
                                                   PrivateCtxPtr->ResponseMaskPtr,
                                                   PositionPtr,
                                                   &DcamKey);
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                Result = XilSdnetBcamGetByResponse(PrivateCtxPtr->BcamCtxPtr,
                                                   PrivateCtxPtr->ResponsePtr,
                                                   PrivateCtxPtr->ResponseMaskPtr,
                                                   PositionPtr,
                                                   PrivateCtxPtr->KeyPtr);
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                Result = XilSdnetStcamGetByResponse(PrivateCtxPtr->StcamCtxPtr,
                                                    PrivateCtxPtr->ResponsePtr,
                                                    PrivateCtxPtr->ResponseMaskPtr,
                                                    PositionPtr,
                                                    PrivateCtxPtr->KeyPtr,
                                                    PrivateCtxPtr->MaskPtr);
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                Result = XilSdnetTcamGetByResponse(PrivateCtxPtr->TcamCtxPtr,
                                                   PrivateCtxPtr->ResponsePtr,
                                                   PrivateCtxPtr->ResponseMaskPtr,
                                                   PositionPtr,
                                                   PrivateCtxPtr->KeyPtr,
                                                   PrivateCtxPtr->MaskPtr);
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Mode == XIL_SDNET_TABLE_MODE_DCAM)
        {
            Result = XilSdnetTableDcamKeyUp(PrivateCtxPtr, DcamKey, KeyPtr);
        }
        else
        {
            Result = XilSdnetTableKeyFormat(PrivateCtxPtr, PrivateCtxPtr->KeyPtr, KeyPtr);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Mode == XIL_SDNET_TABLE_MODE_STCAM || Mode == XIL_SDNET_TABLE_MODE_TCAM)
        {
            Result = XilSdnetTableKeyFormat(PrivateCtxPtr, PrivateCtxPtr->MaskPtr, MaskPtr);
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableGetByKey(XilSdnetTableCtx *CtxPtr,
                                         uint8_t *KeyPtr,
                                         uint8_t *MaskPtr,
                                         uint32_t *PriorityPtr,
                                         uint32_t *ActionIdPtr,
                                         uint8_t *ActionParamsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    /* Check mode specific parameters */
    if (Mode == XIL_SDNET_TABLE_MODE_BCAM)
    {
        if (MaskPtr != NULL)
        {
            return XIL_SDNET_TABLE_ERR_PARAM_NOT_REQUIRED;
        }

        if (PriorityPtr != NULL)
        {
            return XIL_SDNET_TABLE_ERR_PARAM_NOT_REQUIRED;
        }
    }
    else
    {
        if (MaskPtr == NULL)
        {
            return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
        }

        if (PriorityPtr == NULL)
        {
            return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
        }
    }

    /* check remaining buffers */
    if ((KeyPtr == NULL) || (ActionIdPtr == NULL) || (ActionParamsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (Mode != XIL_SDNET_TABLE_MODE_DCAM)
    {
        Result = XilSdnetTableKeyFormat(PrivateCtxPtr, KeyPtr, PrivateCtxPtr->KeyPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Mode == XIL_SDNET_TABLE_MODE_TCAM || (Mode == XIL_SDNET_TABLE_MODE_STCAM))
        {
            Result = XilSdnetTableKeyFormat(PrivateCtxPtr, MaskPtr, PrivateCtxPtr->MaskPtr);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                Result = XIL_SDNET_TABLE_ERR_FUNCTION_NOT_SUPPORTED;
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                Result = XilSdnetBcamGetByKey(PrivateCtxPtr->BcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                Result = XilSdnetStcamGetByKey(PrivateCtxPtr->StcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->MaskPtr, PriorityPtr, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                Result = XilSdnetTcamGetByKey(PrivateCtxPtr->TcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->MaskPtr, PriorityPtr, PrivateCtxPtr->ResponsePtr);
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTableResponseUp(PrivateCtxPtr, PrivateCtxPtr->ResponsePtr, ActionParamsPtr, ActionIdPtr);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableLookup(XilSdnetTableCtx *CtxPtr,
                                       uint8_t *KeyPtr,
                                       uint32_t *ActionIdPtr,
                                       uint8_t *ActionParamsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;
    uint32_t DcamKey = 0;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    /* check buffers */
    if ((KeyPtr == NULL) || (ActionIdPtr == NULL) || (ActionParamsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (Mode == XIL_SDNET_TABLE_MODE_DCAM)
    {
        Result = XilSdnetTableDcamKeyDown(PrivateCtxPtr, KeyPtr, &DcamKey);
    }
    else
    {
        Result = XilSdnetTableKeyFormat(PrivateCtxPtr, KeyPtr, PrivateCtxPtr->KeyPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                Result = XilSdnetDcamLookup(PrivateCtxPtr->DcamCtxPtr, DcamKey, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                Result = XIL_SDNET_TABLE_ERR_FUNCTION_NOT_SUPPORTED;
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                Result = XilSdnetStcamLookup(PrivateCtxPtr->StcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->ResponsePtr);
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                Result = XilSdnetTcamLookup(PrivateCtxPtr->TcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->ResponsePtr);
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTableResponseUp(PrivateCtxPtr, PrivateCtxPtr->ResponsePtr, ActionParamsPtr, ActionIdPtr);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableDelete(XilSdnetTableCtx *CtxPtr, uint8_t *KeyPtr, uint8_t *MaskPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;
    uint32_t DcamKey = 0;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    Result = XilSdnetTableValidatePtrNullForBcamDcam(Mode, MaskPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* check all remaining parameters */
    if (KeyPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (Mode == XIL_SDNET_TABLE_MODE_DCAM)
    {
        Result = XilSdnetTableDcamKeyDown(PrivateCtxPtr, KeyPtr, &DcamKey);
    }
    else
    {
        Result = XilSdnetTableKeyFormat(PrivateCtxPtr, KeyPtr, PrivateCtxPtr->KeyPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        if (Mode == XIL_SDNET_TABLE_MODE_TCAM || (Mode == XIL_SDNET_TABLE_MODE_STCAM))
        {
            Result = XilSdnetTableKeyFormat(PrivateCtxPtr, MaskPtr, PrivateCtxPtr->MaskPtr);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                Result = XilSdnetDcamDelete(PrivateCtxPtr->DcamCtxPtr, DcamKey);
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                Result = XilSdnetBcamDelete(PrivateCtxPtr->BcamCtxPtr, PrivateCtxPtr->KeyPtr);
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                Result = XilSdnetStcamDelete(PrivateCtxPtr->StcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->MaskPtr);
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                Result = XilSdnetTcamDelete(PrivateCtxPtr->TcamCtxPtr, PrivateCtxPtr->KeyPtr, PrivateCtxPtr->MaskPtr);
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableGetEccCountersClearOnRead(XilSdnetTableCtx *CtxPtr,
                                                          uint32_t *CorrectedSingleBitErrorsPtr,
                                                          uint32_t *DetectedDoubleBitErrorsPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    if ((CorrectedSingleBitErrorsPtr == NULL) || (DetectedDoubleBitErrorsPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    switch (Mode)
    {
        case XIL_SDNET_TABLE_MODE_DCAM:
            Result = XilSdnetDcamGetEccCountersClearOnRead(PrivateCtxPtr->DcamCtxPtr,
                                                           CorrectedSingleBitErrorsPtr,
                                                           DetectedDoubleBitErrorsPtr);
            break;

        case XIL_SDNET_TABLE_MODE_BCAM:
            Result = XilSdnetBcamGetEccCountersClearOnRead(PrivateCtxPtr->BcamCtxPtr,
                                                           CorrectedSingleBitErrorsPtr,
                                                           DetectedDoubleBitErrorsPtr);
            break;

        case XIL_SDNET_TABLE_MODE_STCAM:
            Result = XilSdnetStcamGetEccCountersClearOnRead(PrivateCtxPtr->StcamCtxPtr,
                                                            CorrectedSingleBitErrorsPtr,
                                                            DetectedDoubleBitErrorsPtr);
            break;

        case XIL_SDNET_TABLE_MODE_TCAM:
            Result = XilSdnetTcamGetEccCountersClearOnRead(PrivateCtxPtr->TcamCtxPtr,
                                                           CorrectedSingleBitErrorsPtr,
                                                           DetectedDoubleBitErrorsPtr);
            break;

        default:
            Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
            break;
    }


    return Result;
}

XilSdnetReturnType XilSdnetTableGetEccAddressesClearOnRead(XilSdnetTableCtx *CtxPtr,
                                                           uint32_t *FailingAddressSingleBitErrorPtr,
                                                           uint32_t *FailingAddressDoubleBitErrorPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    if ((FailingAddressSingleBitErrorPtr == NULL) || (FailingAddressDoubleBitErrorPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    switch (Mode)
    {
        case XIL_SDNET_TABLE_MODE_DCAM:
            Result = XilSdnetDcamGetEccAddressesClearOnRead(PrivateCtxPtr->DcamCtxPtr,
                                                            FailingAddressSingleBitErrorPtr,
                                                            FailingAddressDoubleBitErrorPtr);
            break;

        case XIL_SDNET_TABLE_MODE_BCAM:
            Result = XilSdnetBcamGetEccAddressesClearOnRead(PrivateCtxPtr->BcamCtxPtr,
                                                            FailingAddressSingleBitErrorPtr,
                                                            FailingAddressDoubleBitErrorPtr);
            break;

        case XIL_SDNET_TABLE_MODE_STCAM:
            Result = XilSdnetStcamGetEccAddressesClearOnRead(PrivateCtxPtr->StcamCtxPtr,
                                                             FailingAddressSingleBitErrorPtr,
                                                             FailingAddressDoubleBitErrorPtr);
            break;

        case XIL_SDNET_TABLE_MODE_TCAM:
            Result = XilSdnetTcamGetEccAddressesClearOnRead(PrivateCtxPtr->TcamCtxPtr,
                                                            FailingAddressSingleBitErrorPtr,
                                                            FailingAddressDoubleBitErrorPtr);
            break;

        default:
            Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
            break;
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableReset(XilSdnetTableCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;

    Result = XilSdnetValidateTableCtxForDrvCall(CtxPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    switch (Mode)
    {
        case XIL_SDNET_TABLE_MODE_DCAM:
            Result = XilSdnetDcamReset(PrivateCtxPtr->DcamCtxPtr);
            break;

        case XIL_SDNET_TABLE_MODE_BCAM:
            Result = XilSdnetBcamReset(PrivateCtxPtr->BcamCtxPtr);
            break;

        case XIL_SDNET_TABLE_MODE_STCAM:
            Result = XilSdnetStcamReset(PrivateCtxPtr->StcamCtxPtr);
            break;

        case XIL_SDNET_TABLE_MODE_TCAM:
            Result = XilSdnetTcamReset(PrivateCtxPtr->TcamCtxPtr);
            break;

        default:
            Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
            break;
    }

    return Result;
}

XilSdnetReturnType XilSdnetTableExit(XilSdnetTableCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;

    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    /* Release everything that was allocated */
    XilSdnetTableDestroyInternalBuffers(PrivateCtxPtr);
    XilSdnetTableDestroyActionArray(PrivateCtxPtr);
    XilSdnetTableDestroyCamDrv(PrivateCtxPtr);
    free(PrivateCtxPtr);

    /* Remove dangling pointer */
    CtxPtr->PrivateCtxPtr = NULL;

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Local function definitions: utility functions for setup and teardown */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetTableCreateCamDrv(XilSdnetTablePrivateCtx *PrivateCtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTableConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetCamConfig CamConfig;

    /* Force low level driver to operate in little endian configuration as this is more efficient when using it from the table driver */
    memcpy(&CamConfig, &(ConfigPtr->CamConfig), sizeof(CamConfig));
    CamConfig.Endian = XIL_SDNET_LITTLE_ENDIAN;

    switch (ConfigPtr->Mode)
    {
        case XIL_SDNET_TABLE_MODE_DCAM:
            PrivateCtxPtr->DcamCtxPtr = &(PrivateCtxPtr->CamDriver.DcamCtx);
            Result = XilSdnetDcamInit(PrivateCtxPtr->DcamCtxPtr, EnvIfPtr, &CamConfig);
            break;

        case XIL_SDNET_TABLE_MODE_BCAM:
            PrivateCtxPtr->BcamCtxPtr = &(PrivateCtxPtr->CamDriver.BcamCtx);
            Result = XilSdnetBcamInit(PrivateCtxPtr->BcamCtxPtr, EnvIfPtr, &CamConfig);
            break;

        case XIL_SDNET_TABLE_MODE_STCAM:
            PrivateCtxPtr->StcamCtxPtr = &(PrivateCtxPtr->CamDriver.StcamCtx);
            Result = XilSdnetStcamInit(PrivateCtxPtr->StcamCtxPtr, EnvIfPtr, &CamConfig);
            break;

        case XIL_SDNET_TABLE_MODE_TCAM:
            PrivateCtxPtr->TcamCtxPtr = &(PrivateCtxPtr->CamDriver.TcamCtx);
            Result = XilSdnetTcamInit(PrivateCtxPtr->TcamCtxPtr, EnvIfPtr, &CamConfig);
            break;

        default:
            Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
            break;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableDestroyCamDrv(XilSdnetTablePrivateCtx *PrivateCtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    switch (PrivateCtxPtr->Mode)
    {
        case XIL_SDNET_TABLE_MODE_DCAM:
            Result = XilSdnetDcamExit(PrivateCtxPtr->DcamCtxPtr);
            break;

        case XIL_SDNET_TABLE_MODE_BCAM:
            Result = XilSdnetBcamExit(PrivateCtxPtr->BcamCtxPtr);
            break;

        case XIL_SDNET_TABLE_MODE_STCAM:
            Result = XilSdnetStcamExit(PrivateCtxPtr->StcamCtxPtr);
            break;

        case XIL_SDNET_TABLE_MODE_TCAM:
            Result = XilSdnetTcamExit(PrivateCtxPtr->TcamCtxPtr);
            break;

        default:
            Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
            break;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableCreateActionArray(XilSdnetTablePrivateCtx *PrivateCtxPtr, XilSdnetTableConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t ActionIndex;
    XilSdnetAction *ActionConfigPtr;
    char *ActionConfigStringPtr;
    XilSdnetTableName *ActionNamePtr;

    PrivateCtxPtr->ActionNameArrayPtr = calloc(ConfigPtr->ActionListSize, sizeof(XilSdnetTableName));
    if (PrivateCtxPtr->ActionNameArrayPtr == NULL)
    {
       goto fail_list_alloc;
    }
    PrivateCtxPtr->NumActions = ConfigPtr->ActionListSize;

    for (ActionIndex = 0; ActionIndex < ConfigPtr->ActionListSize; ActionIndex++)
    {
        ActionConfigPtr = ConfigPtr->ActionListPtr[ActionIndex];
        ActionConfigStringPtr = (char *)(ActionConfigPtr->NameStringPtr);
        ActionNamePtr = &(PrivateCtxPtr->ActionNameArrayPtr[ActionIndex]);

        Result = XilSdnetTableAllocateNameFromString(ActionNamePtr, ActionConfigStringPtr);
        if (Result != XIL_SDNET_SUCCESS)
        {
            goto fail_name_from_string;
        }

        memcpy(ActionNamePtr->StringPtr, ActionConfigStringPtr, (ActionNamePtr->NumBytes - 1));
    }

    return Result;

fail_name_from_string:
    PrivateCtxPtr->NumActions  = 0;
    /* Destroy the Names in reverse */
    for (; ActionIndex != 0; ActionIndex--)
    {
        ActionNamePtr = &(PrivateCtxPtr->ActionNameArrayPtr[ActionIndex]);
        XilSdnetTableDestroyName(ActionNamePtr);
    }
    free(PrivateCtxPtr->ActionNameArrayPtr);
fail_list_alloc:
    return XIL_SDNET_TABLE_ERR_MALLOC_FAILED;
}

static void XilSdnetTableDestroyActionArray(XilSdnetTablePrivateCtx *PrivateCtxPtr)
{
    uint32_t ActionIndex;
    XilSdnetTableName *ActionNamePtr;

    for (ActionIndex = 0; ActionIndex < PrivateCtxPtr->NumActions; ActionIndex++)
    {
        ActionNamePtr = &(PrivateCtxPtr->ActionNameArrayPtr[ActionIndex]);
        XilSdnetTableDestroyName(ActionNamePtr);
    }

    free(PrivateCtxPtr->ActionNameArrayPtr);
}

static XilSdnetReturnType XilSdnetTableCreateInternalBuffers(XilSdnetTablePrivateCtx *PrivateCtxPtr, XilSdnetTableConfig *ConfigPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    /* Before we begin, store remaining configuration needed to support operation */
    PrivateCtxPtr->Mode = ConfigPtr->Mode;
    PrivateCtxPtr->Endian = ConfigPtr->Endian;
    PrivateCtxPtr->KeySizeBits = ConfigPtr->KeySizeBits;
    PrivateCtxPtr->ActionIdWidthBits = ConfigPtr->ActionIdWidthBits;

    /* Compute sizes of internal buffers needed for operation */
    PrivateCtxPtr->KeySizeBytes = ConfigPtr->KeySizeBits / XIL_SDNET_BITS_PER_BYTE;
    if ((ConfigPtr->KeySizeBits % XIL_SDNET_BITS_PER_BYTE) != 0)
    {
        PrivateCtxPtr->KeySizeBytes++;
    }

    PrivateCtxPtr->ResponseSizeBytes = ConfigPtr->CamConfig.ResponseSizeBits / XIL_SDNET_BITS_PER_BYTE;
    if ((ConfigPtr->CamConfig.ResponseSizeBits  % XIL_SDNET_BITS_PER_BYTE) != 0)
    {
        PrivateCtxPtr->ResponseSizeBytes++;
    }

    /* This computation tells the size of the action params buffer provided by the application */
    PrivateCtxPtr->ActionParamsSizeBits = ConfigPtr->CamConfig.ResponseSizeBits - PrivateCtxPtr->ActionIdWidthBits;
    PrivateCtxPtr->ActionParamsSizeBytes = PrivateCtxPtr->ActionParamsSizeBits / XIL_SDNET_BITS_PER_BYTE;
    if ((PrivateCtxPtr->ActionParamsSizeBits % XIL_SDNET_BITS_PER_BYTE) != 0)
    {
        PrivateCtxPtr->ActionParamsSizeBytes++;
    }

    /* Allocate the internal buffers based on the computed sizes */
    PrivateCtxPtr->KeyPtr = calloc(1, PrivateCtxPtr->KeySizeBytes);
    PrivateCtxPtr->MaskPtr = calloc(1, PrivateCtxPtr->KeySizeBytes);
    PrivateCtxPtr->ResponsePtr = calloc(1, PrivateCtxPtr->ResponseSizeBytes);
    PrivateCtxPtr->ResponseMaskPtr = calloc(1, PrivateCtxPtr->ResponseSizeBytes);

    if (((PrivateCtxPtr->KeyPtr == NULL)      || (PrivateCtxPtr->MaskPtr == NULL)) ||
        ((PrivateCtxPtr->ResponsePtr == NULL) || (PrivateCtxPtr->ResponseMaskPtr == NULL)))
    {
        XilSdnetTableDestroyInternalBuffers(PrivateCtxPtr);
        Result = XIL_SDNET_TABLE_ERR_MALLOC_FAILED;
    }

    return Result;
}

static void XilSdnetTableDestroyInternalBuffers(XilSdnetTablePrivateCtx *PrivateCtxPtr)
{
    free(PrivateCtxPtr->KeyPtr);
    free(PrivateCtxPtr->ResponsePtr);
    free(PrivateCtxPtr->MaskPtr);
    free(PrivateCtxPtr->ResponseMaskPtr);
}

static XilSdnetReturnType XilSdnetTableAllocateNameFromString(XilSdnetTableName *DestNamePtr, char *SrcStringPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t NumBytes;
    char *StringPtr = NULL;

    /* including Null terminating character */
    NumBytes = strlen(SrcStringPtr) + 1;

    StringPtr = calloc(1, NumBytes);
    if (StringPtr == NULL)
    {
        Result = XIL_SDNET_TABLE_ERR_MALLOC_FAILED;
    }
    else
    {
        DestNamePtr->NumBytes = NumBytes;
        DestNamePtr->StringPtr = StringPtr;
    }

    return Result;
}

static void XilSdnetTableDestroyName(XilSdnetTableName *NamePtr)
{
    free(NamePtr->StringPtr);
    NamePtr->NumBytes = 0;
}

/****************************************************************************************************************************************************/
/* SECTION: Local function definitions: utility functions for data reformatting */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetTableKeyFormat(XilSdnetTablePrivateCtx *PrivateCtxPtr, uint8_t *SrcDataPtr, uint8_t *DstDataPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t ByteIndex = 0;

    if ((PrivateCtxPtr == NULL) || (SrcDataPtr == NULL) || (DstDataPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (PrivateCtxPtr->Endian == XIL_SDNET_LITTLE_ENDIAN)
    {
        /* If table is configured for little endian mode, then the data is already correctly formatted, regardless of direction of travel */
        memcpy(DstDataPtr, SrcDataPtr, PrivateCtxPtr->KeySizeBytes);
    }
    else
    {
        /* Otherwise it must be byte swapped - again this is independent of the direction of travel */
        for (ByteIndex = 0; ByteIndex < PrivateCtxPtr->KeySizeBytes; ByteIndex++)
        {
            DstDataPtr[ByteIndex] = SrcDataPtr[PrivateCtxPtr->KeySizeBytes - ByteIndex - 1];
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableDcamKeyDown(XilSdnetTablePrivateCtx *PrivateCtxPtr, uint8_t *SrcDataPtr, uint32_t *DstDataPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t ByteIndex = 0;
    uint32_t Key = 0;
    uint32_t KeySizeBits = 0;
    uint32_t Mask = 0;

    if ((PrivateCtxPtr == NULL) || (SrcDataPtr == NULL) || (DstDataPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    KeySizeBits = PrivateCtxPtr->KeySizeBits;

    /* Shift the key into an integer one byte at a time, starting from the most significant byte */
    for (ByteIndex = 0; ByteIndex < PrivateCtxPtr->KeySizeBytes; ByteIndex++)
    {
        /* Make space for the incoming byte */
        Key <<= XIL_SDNET_BITS_PER_BYTE;

        if (PrivateCtxPtr->Endian == XIL_SDNET_LITTLE_ENDIAN)
        {
            Key |= SrcDataPtr[PrivateCtxPtr->KeySizeBytes - ByteIndex - 1];
        }
        else
        {
            Key |= SrcDataPtr[ByteIndex];
        }

        /* The key size may not be a byte multiple.  If so, it's necessary to ignore some leading bits in the most significant byte */
        if (ByteIndex == 0)
        {
            if (KeySizeBits % XIL_SDNET_BITS_PER_BYTE != 0)
            {
                /* This computes a mask to preserve the valid bits only */
                Mask = (1 << (KeySizeBits % XIL_SDNET_BITS_PER_BYTE)) - 1;
                Key &= Mask;
            }
        }
    }

    *DstDataPtr = Key;

    return Result;
}

static XilSdnetReturnType XilSdnetTableDcamKeyUp(XilSdnetTablePrivateCtx *PrivateCtxPtr, uint32_t SrcData, uint8_t *DstDataPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    uint32_t ByteIndex = 0;
    uint8_t CurrentByte = 0;

    if ((PrivateCtxPtr == NULL) || (DstDataPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Unpack the integer into bytes, starting from the least significant byte */
    for (ByteIndex = 0; ByteIndex < PrivateCtxPtr->KeySizeBytes; ByteIndex++)
    {
        /* Mask off the current least significant byte */
        CurrentByte = SrcData & ((1 << XIL_SDNET_BITS_PER_BYTE) - 1);
        if (PrivateCtxPtr->Endian == XIL_SDNET_LITTLE_ENDIAN)
        {
            DstDataPtr[ByteIndex] = CurrentByte;
        }
        else
        {
            DstDataPtr[PrivateCtxPtr->KeySizeBytes - ByteIndex - 1] = CurrentByte;
        }

        /* Discard the byte that was just extracted */
        SrcData >>= XIL_SDNET_BITS_PER_BYTE;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableResponseDown(XilSdnetTablePrivateCtx *PrivateCtxPtr,
                                                    uint8_t *ActionParamsPtr,
                                                    uint32_t ActionId,
                                                    uint8_t *ResponsePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    uint32_t ActionParamsSizeBytes = 0;
    uint32_t ResponseSizeBytes = 0;
    uint32_t ActionParamByteOffset = 0;
    uint32_t ResponseByteOffset = 0;

    uint32_t ActionIdWidthBits = 0;
    uint32_t Shift = 0;
    uint32_t CurrentByte = 0;
    uint32_t Mask = 0;

    if ((PrivateCtxPtr == NULL) || (ActionParamsPtr == NULL) || (ResponsePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Extracting context parameters for convenience */
    ActionParamsSizeBytes = PrivateCtxPtr->ActionParamsSizeBytes;
    ResponseSizeBytes = PrivateCtxPtr->ResponseSizeBytes;
    ActionIdWidthBits = PrivateCtxPtr->ActionIdWidthBits;

    /* First, load the action ID byte by byte into the response buffer */
    while (ActionIdWidthBits != 0)
    {
        if (ActionIdWidthBits >= XIL_SDNET_BITS_PER_BYTE)
        {
            /* Insert a whole byte into the response buffer */
            Mask = (1 << XIL_SDNET_BITS_PER_BYTE) - 1;
            ResponsePtr[ResponseByteOffset] = ActionId & Mask;
            ActionId >>= XIL_SDNET_BITS_PER_BYTE;
            ActionIdWidthBits -= XIL_SDNET_BITS_PER_BYTE;
            /* The byte is now full so move on to the next one */
            ResponseByteOffset++;
        }
        else
        {
            /* Insert the remaining portion of the action ID into the response buffer */
            Mask = (1 << ActionIdWidthBits) - 1;
            Shift = ActionIdWidthBits;
            ResponsePtr[ResponseByteOffset] = ActionId & Mask;
            ActionIdWidthBits = 0;
        }
    }

    /* Second, pack the action parameter data into the response */
    while (ActionParamByteOffset < ActionParamsSizeBytes)
    {
        /* Fetch current source data byte, taking endianness into account */
        if (PrivateCtxPtr->Endian == XIL_SDNET_LITTLE_ENDIAN)
        {
            CurrentByte = ActionParamsPtr[ActionParamByteOffset];
        }
        else
        {
            CurrentByte = ActionParamsPtr[ActionParamsSizeBytes - ActionParamByteOffset - 1];
        }

        /* Populate leading bits with data from source */
        ResponsePtr[ResponseByteOffset] |= (CurrentByte << Shift);

        /* Scrap the bits that were just shifted in */
        CurrentByte >>= (XIL_SDNET_BITS_PER_BYTE - Shift);

        /* If we haven't reached the end of the destination buffer, load the rest of the source data */
        ResponseByteOffset++;
        if (ResponseByteOffset != ResponseSizeBytes)
        {
            ResponsePtr[ResponseByteOffset] = CurrentByte;
        }

        /* Advance to the next source data byte */
        ActionParamByteOffset++;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableResponseUp(XilSdnetTablePrivateCtx *PrivateCtxPtr,
                                                  uint8_t *ResponsePtr,
                                                  uint8_t *ActionParamsPtr,
                                                  uint32_t *ActionIdPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    uint32_t ActionParamsSizeBytes = 0;
    uint32_t ResponseSizeBytes = 0;
    uint32_t ActionParamByteOffset = 0;
    uint32_t ResponseByteOffset = 0;

    uint32_t ActionIdBitOffset = 0;
    uint32_t ActionIdWidthBits = 0;
    uint32_t ActionIdRemainingBits = 0;
    uint32_t Shift = 0;
    uint32_t CurrentByte = 0;
    uint32_t ActionId = 0;

    if ((PrivateCtxPtr == NULL) || (ResponsePtr == NULL) || (ActionParamsPtr == NULL) || (ActionIdPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Extracting context parameters for convenience */
    ActionParamsSizeBytes = PrivateCtxPtr->ActionParamsSizeBytes;
    ResponseSizeBytes = PrivateCtxPtr->ResponseSizeBytes;
    ActionIdWidthBits = PrivateCtxPtr->ActionIdWidthBits;

    /* First, extract the action ID byte by byte from the response buffer */
    while (ActionIdBitOffset < ActionIdWidthBits)
    {
        ActionIdRemainingBits = (ActionIdWidthBits - ActionIdBitOffset);
        CurrentByte = ResponsePtr[ResponseByteOffset];
        if (ActionIdRemainingBits >= XIL_SDNET_BITS_PER_BYTE)
        {
            /* Insert the whole byte into the Action ID at the current offset */
            ActionId |= ((uint32_t)CurrentByte) << ActionIdBitOffset;
            /* Update for the next iteration */
            ActionIdBitOffset += XIL_SDNET_BITS_PER_BYTE;
            ResponseByteOffset++;
        }
        else
        {
            /* Insert the remaining portion of the action ID into the response buffer */
            Shift = ActionIdRemainingBits;
            CurrentByte &= (1 << Shift) - 1;
            ActionId |= ((uint32_t)CurrentByte) << ActionIdBitOffset;
            /* Update for the next iteration */
            ActionIdBitOffset += ActionIdRemainingBits;
        }
    }

    /* Second, unpack the response into the the action parameter data */
    while (ActionParamByteOffset < ActionParamsSizeBytes)
    {
        /* Fetch current source data byte */
        CurrentByte = ResponsePtr[ResponseByteOffset];
        /* Scrap least significant bits corresponding to action ID or the previous byte */
        CurrentByte >>= Shift;
        /* Advance to the next source data byte */
        ResponseByteOffset++;

        /* If we haven't reached the end of the destination buffer, advance to the next byte */
        if (ResponseByteOffset != ResponseSizeBytes)
        {
            /* Populate the remaining leading bits with data from the indexed byte */
            CurrentByte |= ResponsePtr[ResponseByteOffset] << (XIL_SDNET_BITS_PER_BYTE - Shift);
        }

        /* Populate the destination buffer with the value constructed above, taking endianness into account */
        if (PrivateCtxPtr->Endian == XIL_SDNET_LITTLE_ENDIAN)
        {
            ActionParamsPtr[ActionParamByteOffset] = CurrentByte;
        }
        else
        {
            ActionParamsPtr[ActionParamsSizeBytes - ActionParamByteOffset - 1] = CurrentByte;
        }

        /* Advance to the next destination data byte */
        ActionParamByteOffset++;
    }

    *ActionIdPtr = ActionId;

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Local function definitions: utility functions to simplify implementation */
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetValidateTableCtxForDrvCall(XilSdnetTableCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetTablePrivateCtx *PrivateCtxPtr = NULL;
    XilSdnetTableMode Mode;

    /* MaskPtr is dependant on Mode */
    if (CtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    Mode = PrivateCtxPtr->Mode;

    if (Mode >= XIL_SDNET_NUM_TABLE_MODES)
    {
        Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        switch (Mode)
        {
            case XIL_SDNET_TABLE_MODE_DCAM:
                if (PrivateCtxPtr->DcamCtxPtr == NULL)
                {
                    Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_HANDLE_DRV;
                }
                break;

            case XIL_SDNET_TABLE_MODE_BCAM:
                if (PrivateCtxPtr->BcamCtxPtr == NULL)
                {
                    Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_HANDLE_DRV;
                }
                break;

            case XIL_SDNET_TABLE_MODE_STCAM:
                if (PrivateCtxPtr->StcamCtxPtr == NULL)
                {
                    Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_HANDLE_DRV;
                }
                break;

            case XIL_SDNET_TABLE_MODE_TCAM:
                if (PrivateCtxPtr->TcamCtxPtr == NULL)
                {
                    Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_HANDLE_DRV;
                }
                break;

            default:
                Result = XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE;
                break;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableValidatePtrNullForBcamDcam(XilSdnetTableMode Mode, uint8_t *Ptr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    /* Check mode specific parameters */
    if ((Mode == XIL_SDNET_TABLE_MODE_DCAM) || (Mode == XIL_SDNET_TABLE_MODE_BCAM))
    {
        if (Ptr != NULL)
        {
            Result = XIL_SDNET_TABLE_ERR_PARAM_NOT_REQUIRED;
        }
    }
    else
    {
        if (Ptr == NULL)
        {
            Result = XIL_SDNET_GENERAL_ERR_NULL_PARAM;
        }
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTableNameMatchesString(XilSdnetTableName *NamePtr, char *StringNamePtr, bool *StringMatchesNamePtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    size_t StringSize;
    int StrCmpResult;

    *StringMatchesNamePtr = true;
    StringSize =  strlen(StringNamePtr) + 1;
    if (StringSize != NamePtr->NumBytes)
    {
        *StringMatchesNamePtr = false;
    }

    if (*StringMatchesNamePtr == true)
    {
        StrCmpResult = strncmp(StringNamePtr, NamePtr->StringPtr, NamePtr->NumBytes);
        if (StrCmpResult != 0)
        {
            *StringMatchesNamePtr = false;
        }
    }

    return Result;
}
