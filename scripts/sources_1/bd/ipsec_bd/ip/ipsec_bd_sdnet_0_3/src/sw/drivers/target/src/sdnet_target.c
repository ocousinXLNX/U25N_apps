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
-- Revision       : $Revision: #5 $
-- Date           : $DateTime: 2020/06/11 15:04:40 $
-- Last Author    : $Author: fmartin $
--
--------------------------------------------------------------------------------
-- Description : Implementation of the SDNet target driver
--
--------------------------------------------------------------------------------
*/

/****************************************************************************************************************************************************/
/* SECTION: Header includes */
/****************************************************************************************************************************************************/

#include "sdnet_target.h"
#include <string.h>

/****************************************************************************************************************************************************/
/* SECTION: Constants/macros */
/****************************************************************************************************************************************************/
#define XIL_SDNET_TARGET_SW_VERSION_MAJOR_NUM    (2)
#define XIL_SDNET_TARGET_SW_VERSION_MINOR_NUM    (2)
#define XIL_SDNET_TARGET_SW_VERSION_REVISION_NUM (0)

/****************************************************************************************************************************************************/
/* SECTION: Type defintions */
/****************************************************************************************************************************************************/

typedef struct XilSdnetTargetTableCtx
{
    char *           NameStringPtr;
    uint32_t         NameSizeBytes;
    XilSdnetTableCtx TableCtx;
} XilSdnetTargetTableCtx;

typedef struct XilSdnetTargetMgmtCtx
{
    XilSdnetTargetBuildInfoCtx *BuildInfoCtxPtr;
    XilSdnetTargetInterruptCtx *InterruptCtxPtr;
} XilSdnetTargetMgmtCtx;

struct XilSdnetTargetPrivateCtx
{
    uint32_t                NumTables;
    XilSdnetTargetTableCtx *TableCtxArrayPtr;
    XilSdnetTargetMgmtCtx   MgmtCtx;
};

/****************************************************************************************************************************************************/
/* SECTION: Local function declarations*/
/****************************************************************************************************************************************************/

static XilSdnetReturnType XilSdnetTargetTablesInit(XilSdnetTargetPrivateCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetConfig *ConfigPtr);
static XilSdnetReturnType XilSdnetTargetTablesExit(XilSdnetTargetPrivateCtx *CtxPtr);
static XilSdnetReturnType XilSdnetTargetMgmtInit(XilSdnetTargetMgmtCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetConfig *ConfigPtr);
static XilSdnetReturnType XilSdnetTargetMgmtExit(XilSdnetTargetMgmtCtx *CtxPtr);
static XilSdnetReturnType XilSdnetTargetCheckCompatibleHwVersion(XilSdnetTargetBuildInfoCtx *BuildInfoCtxPtr);

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetTargetInit(XilSdnetTargetCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetConfig *ConfigPtr)
{
    XilSdnetReturnType        Result            = XIL_SDNET_SUCCESS;
    XilSdnetTargetPrivateCtx *AllocTargetCtxPtr = NULL;

    if ((CtxPtr == NULL) || (EnvIfPtr == NULL) || (ConfigPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    Result = XilSdnetValidateEnvIf(EnvIfPtr);
    if (Result != XIL_SDNET_SUCCESS)
    {
        return Result;
    }

    /* Allocating top level target context structure */
    AllocTargetCtxPtr = calloc(1, sizeof(XilSdnetTargetPrivateCtx));
    if (AllocTargetCtxPtr == NULL)
    {
        Result = XIL_SDNET_TARGET_ERR_MALLOC_FAILED;
        goto fail_target_ctx_alloc;
    }

    // Call Function, to init tables
    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTargetTablesInit(AllocTargetCtxPtr, EnvIfPtr, ConfigPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        Result = XilSdnetTargetMgmtInit(&(AllocTargetCtxPtr->MgmtCtx), EnvIfPtr, ConfigPtr);
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        /* Compatibility check can only be implement if the BuildInfo Driver is present */
        if (AllocTargetCtxPtr->MgmtCtx.BuildInfoCtxPtr != NULL)
        {
            Result = XilSdnetTargetCheckCompatibleHwVersion(AllocTargetCtxPtr->MgmtCtx.BuildInfoCtxPtr);
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        CtxPtr->PrivateCtxPtr = AllocTargetCtxPtr;
    }
    else
    {
        free(AllocTargetCtxPtr);
        CtxPtr->PrivateCtxPtr = NULL;
    }

fail_target_ctx_alloc:
    return Result;
}

XilSdnetReturnType XilSdnetTargetExit(XilSdnetTargetCtx *CtxPtr)
{
    XilSdnetReturnType        Result        = XIL_SDNET_SUCCESS;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr = NULL;

    if ((CtxPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    XilSdnetTargetTablesExit(PrivateCtxPtr);
    XilSdnetTargetMgmtExit(&(PrivateCtxPtr->MgmtCtx));
    free(CtxPtr->PrivateCtxPtr);
    CtxPtr->PrivateCtxPtr = NULL;

    return Result;
}

XilSdnetReturnType XilSdnetTargetGetSwVersion(XilSdnetTargetCtx *CtxPtr, XilSdnetVersion *SwVersionPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (SwVersionPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    SwVersionPtr->Major    = XIL_SDNET_TARGET_SW_VERSION_MAJOR_NUM;
    SwVersionPtr->Minor    = XIL_SDNET_TARGET_SW_VERSION_MINOR_NUM;
    SwVersionPtr->Revision = XIL_SDNET_TARGET_SW_VERSION_REVISION_NUM;

    return Result;
}

XilSdnetReturnType XilSdnetTargetGetTableByName(XilSdnetTargetCtx *CtxPtr, char *TableNamePtr, XilSdnetTableCtx **TableCtxPtrPtr)
{
    XilSdnetReturnType        Result;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr     = NULL;
    XilSdnetTargetTableCtx *  TargetTableCtxPtr = NULL;
    uint32_t                  TableIndex        = 0;
    int                       StrcmpResult      = 0;

    if ((CtxPtr == NULL) || (TableNamePtr == NULL) || (TableCtxPtrPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    /* Assumes no match by default - overriden if a match is found */
    Result = XIL_SDNET_TARGET_ERR_TABLE_NOT_FOUND;
    for (TableIndex = 0; TableIndex < PrivateCtxPtr->NumTables; TableIndex++)
    {
        TargetTableCtxPtr = &(PrivateCtxPtr->TableCtxArrayPtr[TableIndex]);
        StrcmpResult      = strcmp(TableNamePtr, TargetTableCtxPtr->NameStringPtr);
        if (StrcmpResult == 0)
        {
            *TableCtxPtrPtr = &(TargetTableCtxPtr->TableCtx);
            Result          = XIL_SDNET_SUCCESS;
            break;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetGetTableByIndex(XilSdnetTargetCtx *CtxPtr, uint32_t Index, XilSdnetTableCtx **TableCtxPtrPtr)
{
    XilSdnetReturnType        Result            = XIL_SDNET_SUCCESS;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr     = NULL;
    XilSdnetTargetTableCtx *  TargetTableCtxPtr = NULL;

    if ((CtxPtr == NULL) || (TableCtxPtrPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;
    if (Index >= PrivateCtxPtr->NumTables)
    {
        return XIL_SDNET_TARGET_ERR_TABLE_NOT_FOUND;
    }

    TargetTableCtxPtr = &(PrivateCtxPtr->TableCtxArrayPtr[Index]);
    *TableCtxPtrPtr   = &(TargetTableCtxPtr->TableCtx);
    return Result;
}

XilSdnetReturnType XilSdnetTargetGetTableCount(XilSdnetTargetCtx *CtxPtr, uint32_t *NumTablesPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if ((CtxPtr == NULL) || (NumTablesPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    *NumTablesPtr = CtxPtr->PrivateCtxPtr->NumTables;
    return Result;
}

XilSdnetReturnType XilSdnetTargetGetTableName(XilSdnetTargetCtx *CtxPtr,
                                              XilSdnetTableCtx * TableCtxPtr,
                                              char *             TableNamePtr,
                                              uint32_t           TableNameNumBytes)
{
    XilSdnetReturnType        Result            = XIL_SDNET_SUCCESS;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr     = NULL;
    XilSdnetTargetTableCtx *  TargetTableCtxPtr = NULL;
    uint32_t                  TableIndex        = 0;

    if ((CtxPtr == NULL) || (TableCtxPtr == NULL) || (TableNamePtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    /* Assumes no match by default - overriden if a match is found */
    Result = XIL_SDNET_TARGET_ERR_TABLE_NOT_FOUND;
    for (TableIndex = 0; TableIndex < PrivateCtxPtr->NumTables; TableIndex++)
    {
        TargetTableCtxPtr = &(PrivateCtxPtr->TableCtxArrayPtr[TableIndex]);
        if (TableCtxPtr == &(TargetTableCtxPtr->TableCtx))
        {
            Result = XIL_SDNET_SUCCESS;
            break;
        }
    }

    /* If a match is found, confirm the provided buffer can hold the name */
    if (Result == XIL_SDNET_SUCCESS)
    {
        if (TargetTableCtxPtr->NameSizeBytes > TableNameNumBytes)
        {
            Result = XIL_SDNET_TARGET_ERR_NAME_BUFFER_TOO_SMALL;
        }
    }

    /* Copy the name into the provided buffer */
    if (Result == XIL_SDNET_SUCCESS)
    {
        strncpy(TableNamePtr, TargetTableCtxPtr->NameStringPtr, TableNameNumBytes);
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetGetTableElementIdByName(XilSdnetTargetCtx *CtxPtr, char *TableNamePtr, uint32_t *ElementIdPtr)
{
    XilSdnetReturnType        Result;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr     = NULL;
    XilSdnetTargetTableCtx *  TargetTableCtxPtr = NULL;
    uint32_t                  TableIndex        = 0;
    int                       StrcmpResult      = 0;

    if ((CtxPtr == NULL) || (TableNamePtr == NULL) || (ElementIdPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    /* Assumes no match by default - overriden if a match is found */
    Result = XIL_SDNET_TARGET_ERR_TABLE_NOT_FOUND;
    for (TableIndex = 0; TableIndex < PrivateCtxPtr->NumTables; TableIndex++)
    {
        TargetTableCtxPtr = &(PrivateCtxPtr->TableCtxArrayPtr[TableIndex]);
        StrcmpResult      = strcmp(TableNamePtr, TargetTableCtxPtr->NameStringPtr);
        if (StrcmpResult == 0)
        {
            /* Assumes TableIndex and ElementID are the same, which is valid until more P4 elements are supportted */
            *ElementIdPtr = TableIndex;
            Result        = XIL_SDNET_SUCCESS;
            break;
        }
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetGetBuildInfoDrv(XilSdnetTargetCtx *CtxPtr, XilSdnetTargetBuildInfoCtx **BuildInfoCtxPtrPtr)
{
    XilSdnetReturnType        Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr;

    if ((CtxPtr == NULL) || (BuildInfoCtxPtrPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (PrivateCtxPtr->MgmtCtx.BuildInfoCtxPtr != NULL)
    {
        *BuildInfoCtxPtrPtr = PrivateCtxPtr->MgmtCtx.BuildInfoCtxPtr;
    }
    else
    {
        Result = XIL_SDNET_TARGET_ERR_MGMT_DRV_NOT_AVAILABLE;
    }

    return Result;
}

XilSdnetReturnType XilSdnetTargetGetInterruptDrv(XilSdnetTargetCtx *CtxPtr, XilSdnetTargetInterruptCtx **InterruptCtxPtrPtr)
{
    XilSdnetReturnType        Result = XIL_SDNET_SUCCESS;
    XilSdnetTargetPrivateCtx *PrivateCtxPtr;

    if ((CtxPtr == NULL) || (InterruptCtxPtrPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (CtxPtr->PrivateCtxPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT;
    }

    PrivateCtxPtr = CtxPtr->PrivateCtxPtr;

    if (PrivateCtxPtr->MgmtCtx.InterruptCtxPtr != NULL)
    {
        *InterruptCtxPtrPtr = PrivateCtxPtr->MgmtCtx.InterruptCtxPtr;
    }
    else
    {
        Result = XIL_SDNET_TARGET_ERR_MGMT_DRV_NOT_AVAILABLE;
    }

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Local Function definitions */
/****************************************************************************************************************************************************/
static XilSdnetReturnType XilSdnetTargetTablesInit(XilSdnetTargetPrivateCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetConfig *ConfigPtr)
{
    XilSdnetReturnType         Result                 = XIL_SDNET_SUCCESS;
    uint32_t                   TableIndex             = 0;
    XilSdnetTargetTableCtx *   TargetTableCtxArrayPtr = NULL;
    XilSdnetTargetTableCtx *   TargetTableCtxPtr      = NULL;
    XilSdnetTableConfig        TableConfig;
    XilSdnetTargetTableConfig *TargetTableConfigPtr = NULL;

    /* Allocating array to hold table name/context pairs */
    TargetTableCtxArrayPtr = calloc(ConfigPtr->TableListSize, sizeof(XilSdnetTargetTableCtx));
    if (TargetTableCtxArrayPtr == NULL)
    {
        Result = XIL_SDNET_TARGET_ERR_MALLOC_FAILED;
        goto fail_table_list_ctx_alloc;
    }

    /* Loop through the allocated array and set up each element */
    for (TableIndex = 0; TableIndex < ConfigPtr->TableListSize; TableIndex++)
    {
        /* Pulling currently indexed entries for convenience */
        TargetTableConfigPtr = ConfigPtr->TableListPtr[TableIndex];
        TargetTableCtxPtr    = &(TargetTableCtxArrayPtr[TableIndex]);

        /* Initialization of the table context structure - overrides the endian of the table with the global specified for the target */
        memcpy(&TableConfig, &(TargetTableConfigPtr->Config), sizeof(TableConfig));
        TableConfig.Endian = ConfigPtr->Endian;
        Result             = XilSdnetTableInit(&(TargetTableCtxPtr->TableCtx), EnvIfPtr, &TableConfig);
        if (Result != XIL_SDNET_SUCCESS)
        {
            goto fail_table_init;
        }

        /* Storing a copy of the name associated with the context initialized above */
        TargetTableCtxPtr->NameSizeBytes = strlen(TargetTableConfigPtr->NameStringPtr) + 1;
        TargetTableCtxPtr->NameStringPtr = calloc(1, TargetTableCtxPtr->NameSizeBytes);
        if (TargetTableCtxPtr->NameStringPtr == NULL)
        {
            /* Initialize will allocate memory, so exit to release that memory */
            XilSdnetTableExit(&(TargetTableCtxPtr->TableCtx));
            goto fail_table_init;
        }

        strncpy(TargetTableCtxPtr->NameStringPtr, TargetTableConfigPtr->NameStringPtr, TargetTableCtxPtr->NameSizeBytes);
    }

    /* All memory allocated successfully - complete structure connections */
    CtxPtr->TableCtxArrayPtr = TargetTableCtxArrayPtr;
    CtxPtr->NumTables        = ConfigPtr->TableListSize;

    return Result;

fail_table_init:
    while (TableIndex-- != 0)
    {
        TargetTableCtxPtr = &(TargetTableCtxArrayPtr[TableIndex]);
        /* This is a best attempt exit, error can still happen for low level driver exits*/
        XilSdnetTableExit(&(TargetTableCtxPtr->TableCtx));
        free(TargetTableCtxPtr->NameStringPtr);
    }
    free(TargetTableCtxArrayPtr);
fail_table_list_ctx_alloc:
    return Result;
}

static XilSdnetReturnType XilSdnetTargetTablesExit(XilSdnetTargetPrivateCtx *CtxPtr)
{
    XilSdnetReturnType      Result;
    XilSdnetReturnType      TableExitResult   = XIL_SDNET_SUCCESS;
    XilSdnetTargetTableCtx *TargetTableCtxPtr = NULL;
    uint32_t                TableIndex        = 0;

    for (TableIndex = 0; TableIndex < CtxPtr->NumTables; TableIndex++)
    {
        TargetTableCtxPtr = &(CtxPtr->TableCtxArrayPtr[TableIndex]);
        TableExitResult   = XilSdnetTableExit(&(TargetTableCtxPtr->TableCtx));
        /* Report the last error if any of the target tables exit but attempt to free all*/
        if (TableExitResult != XIL_SDNET_SUCCESS)
        {
            Result = TableExitResult;
        }
        free(TargetTableCtxPtr->NameStringPtr);
    }

    free(CtxPtr->TableCtxArrayPtr);

    return Result;
}

static XilSdnetReturnType XilSdnetTargetMgmtInit(XilSdnetTargetMgmtCtx *CtxPtr, XilSdnetEnvIf *EnvIfPtr, XilSdnetTargetConfig *ConfigPtr)
{
    XilSdnetReturnType          Result          = XIL_SDNET_SUCCESS;
    XilSdnetTargetBuildInfoCtx *BuildInfoCtxPtr = NULL;
    XilSdnetTargetInterruptCtx *InterruptCtxPtr = NULL;

    if (ConfigPtr->BuildInfoPtr != NULL)
    {
        BuildInfoCtxPtr = calloc(1, sizeof(XilSdnetTargetBuildInfoCtx));
        if (BuildInfoCtxPtr == NULL)
        {
            Result = XIL_SDNET_TARGET_ERR_MALLOC_FAILED;
            goto fail_alloc_build_info;
        }

        Result = XilSdnetTargetBuildInfoInit(BuildInfoCtxPtr, EnvIfPtr, ConfigPtr->BuildInfoPtr);
        if (Result != XIL_SDNET_SUCCESS)
        {
            goto fail_init_build_info;
        }
    }
    else
    {
        CtxPtr->BuildInfoCtxPtr = NULL;
    }

    if (ConfigPtr->InterruptPtr != NULL)
    {
        InterruptCtxPtr = calloc(1, sizeof(XilSdnetTargetInterruptCtx));
        if (InterruptCtxPtr == NULL)
        {
            Result = XIL_SDNET_TARGET_ERR_MALLOC_FAILED;
            goto fail_alloc_interrupt;
        }

        Result = XilSdnetTargetInterruptInit(InterruptCtxPtr, EnvIfPtr, ConfigPtr->InterruptPtr);
        if (Result != XIL_SDNET_SUCCESS)
        {
            goto fail_init_interrupt;
        }
    }
    else
    {
        CtxPtr->InterruptCtxPtr = NULL;
    }

    CtxPtr->BuildInfoCtxPtr = BuildInfoCtxPtr;
    CtxPtr->InterruptCtxPtr = InterruptCtxPtr;

    return Result;

fail_init_interrupt:
    free(InterruptCtxPtr);
fail_alloc_interrupt:
    if (BuildInfoCtxPtr != NULL)
    {
        XilSdnetTargetBuildInfoExit(BuildInfoCtxPtr);
    }
fail_init_build_info:
    free(BuildInfoCtxPtr);
fail_alloc_build_info:
    return Result;
}

static XilSdnetReturnType XilSdnetTargetMgmtExit(XilSdnetTargetMgmtCtx *CtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;

    if (CtxPtr->BuildInfoCtxPtr != NULL)
    {
        XilSdnetTargetBuildInfoExit(CtxPtr->BuildInfoCtxPtr);
        free(CtxPtr->BuildInfoCtxPtr);
        CtxPtr->BuildInfoCtxPtr = NULL;
    }

    if (CtxPtr->InterruptCtxPtr != NULL)
    {
        XilSdnetTargetInterruptExit(CtxPtr->InterruptCtxPtr);
        free(CtxPtr->InterruptCtxPtr);
        CtxPtr->InterruptCtxPtr = NULL;
    }

    return Result;
}

static XilSdnetReturnType XilSdnetTargetCheckCompatibleHwVersion(XilSdnetTargetBuildInfoCtx *BuildInfoCtxPtr)
{
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    XilSdnetVersion IpVersion;

    /* If driver available get the IP Version */
    if (BuildInfoCtxPtr != NULL)
    {
        Result = XilSdnetTargetBuildInfoGetIpVersion(BuildInfoCtxPtr, &IpVersion);
        if (Result != XIL_SDNET_SUCCESS)
        {
            return Result;
        }
    }

    if (Result == XIL_SDNET_SUCCESS)
    {
        /* The software and hardware versions are compatible if the Major and Minor numbers are equal */
        if ((IpVersion.Major != XIL_SDNET_TARGET_SW_VERSION_MAJOR_NUM) || (IpVersion.Minor != XIL_SDNET_TARGET_SW_VERSION_MINOR_NUM))
        {
            Result = XIL_SDNET_TARGET_ERR_INCOMPATIBLE_SW_HW;
        }
    }

    return Result;
}