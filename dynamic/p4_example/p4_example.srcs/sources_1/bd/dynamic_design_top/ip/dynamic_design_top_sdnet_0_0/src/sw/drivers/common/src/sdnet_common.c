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
-- Revision       : $Revision: #4 $
-- Date           : $DateTime: 2020/05/27 12:35:12 $
-- Last Author    : $Author: fmartin $
--
--------------------------------------------------------------------------------
-- Description : This file implements some utility functions for working with
-- the device access interface used by Xilinx SDNet extern SW drivers.
--
--------------------------------------------------------------------------------
*/

/****************************************************************************************************************************************************/
/* SECTION: Header includes */
/****************************************************************************************************************************************************/

#include "sdnet_common.h"
#include <stdarg.h>
#include <stdio.h>

/****************************************************************************************************************************************************/
/* SECTION: Local function prototypes */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetWordWrite32Stub(XilSdnetEnvIf *EnvIfPtr, XilSdnetAddressType Address, uint32_t WriteValue);
XilSdnetReturnType XilSdnetWordRead32Stub(XilSdnetEnvIf *EnvIfPtr, XilSdnetAddressType Address, uint32_t *ReadValuePtr);
XilSdnetReturnType XilSdnetWordLogStub(XilSdnetEnvIf *EnvIfPtr, const char *MessagePtr);

/****************************************************************************************************************************************************/
/* SECTION: Private data definitions */
/****************************************************************************************************************************************************/

/* Error code definition print messages for Xilinx SDNet library */
/* Changes to XilSdnetReturnType definition must be reflected here */
static const char * XilSdnetReturnTypeStrings[XIL_SDNET_NUM_RETURN_CODES] =
{
    /* General/common return codes */
    "XIL_SDNET_SUCCESS",
    "XIL_SDNET_GENERAL_ERR_NULL_PARAM",
    "XIL_SDNET_GENERAL_ERR_INVALID_CONTEXT",
    "XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE",
    "XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION",

    /* Build Info driver return codes */
    "XIL_SDNET_BUILD_INFO_ERR_MALLOC_FAILED",

    /* Interrupt driver retrun codes */
    "XIL_SDNET_INTERRUPT_ERR_MALLOC_FAILED",
    "XIL_SDNET_INTERRUPT_ERR_CONFIG_MAX_NUM_ELEMENTS_EXCEED",
    "XIL_SDNET_INTERRUPT_ERR_CONFIG_MAX_NUM_FIFOS_EXCEED",
    "XIL_SDNET_INTERRUPT_ERR_CONFIG_INVALID_FIFO_NAME",
    "XIL_SDNET_INTERRUPT_ERR_FIFO_NOT_FOUND",
    "XIL_SDNET_INTERRUPT_ERR_NAME_BUFFER_TOO_SMALL",
    "XIL_SDNET_INTERRUPT_ERR_INVALID_ECC_ERROR_TYPE",
    "XIL_SDNET_INTERRUPT_ERR_INVALID_ELEMENT_ID",
    "XIL_SDNET_INTERRUPT_ERR_INVALID_FIFO_INDEX",

    /* Random extern driver return codes */
    "XIL_SDNET_RANDOM_ERR_INVALID_MODE",
    "XIL_SDNET_RANDOM_ERR_ARRAY_INVALID_SIZE",
    "XIL_SDNET_RANDOM_ERR_INVALID_SEED",

    /* Register extern driver return codes */
    "XIL_SDNET_REGISTER_ERR_INVALID_DATA_SIZE",
    "XIL_SDNET_REGISTER_ERR_INVALID_NUM_REGS",
    "XIL_SDNET_REGISTER_ERR_INVALID_NUM_BITS",
    "XIL_SDNET_REGISTER_ERR_BUFFER_SIZE_MISMATCH",
    "XIL_SDNET_REGISTER_ERR_INVALID_INDEX",

    /* Counter extern driver return codes */
    "XIL_SDNET_COUNTER_ERR_CONFIG_INVALID_MODE",
    "XIL_SDNET_COUNTER_ERR_CONFIG_UNSUPPORTED_OPERATION",
    "XIL_SDNET_COUNTER_ERR_CONFIG_INVALID_NUM_COUNTERS",
    "XIL_SDNET_COUNTER_ERR_INVALID_INDEX",
    "XIL_SDNET_COUNTER_ERR_INVALID_PACKET_COUNT",
    "XIL_SDNET_COUNTER_ERR_INVALID_BYTE_COUNT",

    /* Meter extern driver return codes */
    "XIL_SDNET_METER_ERR_CONFIG_INVALID_MODE",
    "XIL_SDNET_METER_ERR_CONFIG_UNSUPPORTED_OPERATION",
    "XIL_SDNET_METER_ERR_CONFIG_INVALID_NUM_METERS",
    "XIL_SDNET_METER_ERR_CONFIG_INVALID_CLOCK_FREQ",
    "XIL_SDNET_METER_ERR_INVALID_INDEX",
    "XIL_SDNET_METER_ERR_INVALID_PROFILE_COLOUR_AWARE",
    "XIL_SDNET_METER_ERR_INVALID_PROFILE_DATA_RATE",
    "XIL_SDNET_METER_ERR_INVALID_PROFILE_BURST_SIZE",
    "XIL_SDNET_METER_ERR_INVALID_NUM_BITS",

    /* CAM driver return codes */
    "XIL_SDNET_CAM_ERR_INVALID_NUM_ENTRIES",
    "XIL_SDNET_CAM_ERR_LOOKUP_NOT_FOUND",
    "XIL_SDNET_CAM_ERR_INVALID_KEY",
    "XIL_SDNET_CAM_ERR_INVALID_ENDIAN",
    "XIL_SDNET_CAM_ERR_FULL",
    "XIL_SDNET_CAM_ERR_NO_OPEN",
    "XIL_SDNET_CAM_ERR_INVALID_ARG",
    "XIL_SDNET_CAM_ERR_WRONG_KEY_WIDTH",
    "XIL_SDNET_CAM_ERR_TOO_MANY_INSTANCES",
    "XIL_SDNET_CAM_ERR_WRONG_BIT_FIELD_MASK",
    "XIL_SDNET_CAM_ERR_WRONG_CONST_FIELD_MASK",
    "XIL_SDNET_CAM_ERR_WRONG_UNUSED_FIELD_MASK",
    "XIL_SDNET_CAM_ERR_INVALID_TERNARY_FIELD_LEN",
    "XIL_SDNET_CAM_ERR_WRONG_PRIO_WIDTH",
    "XIL_SDNET_CAM_ERR_WRONG_MAX",
    "XIL_SDNET_CAM_ERR_DUPLICATE_FOUND",
    "XIL_SDNET_CAM_ERR_WRONG_PREFIX",
    "XIL_SDNET_CAM_ERR_WRONG_PREFIX_MASK",
    "XIL_SDNET_CAM_ERR_WRONG_RANGE",
    "XIL_SDNET_CAM_ERR_WRONG_RANGE_MASK",
    "XIL_SDNET_CAM_ERR_KEY_NOT_FOUND",
    "XIL_SDNET_CAM_ERR_WRONG_MIN",
    "XIL_SDNET_CAM_ERR_WRONG_PRIO",
    "XIL_SDNET_CAM_ERR_WRONG_LIST_LENGTH",
    "XIL_SDNET_CAM_ERR_WRONG_NUMBER_OF_SLOTS",
    "XIL_SDNET_CAM_ERR_INVALID_MEM_TYPE",
    "XIL_SDNET_CAM_ERR_TOO_HIGH_FREQUENCY",
    "XIL_SDNET_CAM_ERR_WRONG_TERNARY_MASK",
    "XIL_SDNET_CAM_ERR_MASKED_KEY_BIT_IS_SET",
    "XIL_SDNET_CAM_ERR_INVALID_MODE",
    "XIL_SDNET_CAM_ERR_WRONG_RESPONSE_WIDTH",
    "XIL_SDNET_CAM_ERR_FORMAT_SYNTAX",
    "XIL_SDNET_CAM_ERR_TOO_MANY_FIELDS",
    "XIL_SDNET_CAM_ERR_TOO_MANY_RANGES",
    "XIL_SDNET_CAM_ERR_INVALID_RANGE_LEN",
    "XIL_SDNET_CAM_ERR_INVALID_RANGE_START",
    "XIL_SDNET_CAM_ERR_INVALID_PREFIX_LEN",
    "XIL_SDNET_CAM_ERR_INVALID_PREFIX_START",
    "XIL_SDNET_CAM_ERR_INVALID_PREFIX_KEY",
    "XIL_SDNET_CAM_ERR_INVALID_BIT_FIELD_LEN",
    "XIL_SDNET_CAM_ERR_INVALID_BIT_FIELD_START",
    "XIL_SDNET_CAM_ERR_INVALID_CONST_FIELD_LEN",
    "XIL_SDNET_CAM_ERR_INVALID_CONST_FIELD_START",
    "XIL_SDNET_CAM_ERR_INVALID_UNUSED_FIELD_LEN",
    "XIL_SDNET_CAM_ERR_INVALID_UNUSED_FIELD_START",
    "XIL_SDNET_CAM_ERR_MAX_KEY_LEN_EXCEED",
    "XIL_SDNET_CAM_ERR_INVALID_PRIO_AND_INDEX_WIDTH",
    "XIL_SDNET_CAM_ERR_TOO_MANY_UNITS",
    "XIL_SDNET_CAM_ERR_NO_MASK",
    "XIL_SDNET_CAM_ERR_NOMEM",
    "XIL_SDNET_CAM_ERR_MALLOC_FAILED",
    "XIL_SDNET_CAM_ERR_UNKNOWN",
    "XIL_SDNET_CAM_ERR_INVALID_MEMORY_WIDTH",
    "XIL_SDNET_CAM_ERR_UNSUPPORTED_COMMAND",
    "XIL_SDNET_CAM_ERR_ENVIRONMENT",
    "XIL_SDNET_CAM_ERR_UNSUPPORTED_CAM_TYPE",
    "XIL_SDNET_CAM_ERR_NULL_POINTER",
    "XIL_SDNET_CAM_ERR_TOO_MANY_PCS",
    "XIL_SDNET_CAM_ERR_CONFIGURATION",
    "XIL_SDNET_CAM_ERR_ENVIRONMENT_FSMBUSY",
    "XIL_SDNET_CAM_ERR_ENVIRONMENT_POLLED_OUT",

    /* Table driver return codes */
    "XIL_SDNET_TABLE_ERR_INVALID_TABLE_HANDLE_DRV",
    "XIL_SDNET_TABLE_ERR_INVALID_TABLE_MODE",
    "XIL_SDNET_TABLE_ERR_INVALID_ACTION_ID",
    "XIL_SDNET_TABLE_ERR_PARAM_NOT_REQUIRED",
    "XIL_SDNET_TABLE_ERR_ACTION_NOT_FOUND",
    "XIL_SDNET_TABLE_ERR_FUNCTION_NOT_SUPPORTED",
    "XIL_SDNET_TABLE_ERR_MALLOC_FAILED",
    "XIL_SDNET_TABLE_ERR_NAME_BUFFER_TOO_SMALL",

    /* Target driver return codes */
    "XIL_SDNET_TARGET_ERR_MALLOC_FAILED",
    "XIL_SDNET_TARGET_ERR_TABLE_NOT_FOUND",
    "XIL_SDNET_TARGET_ERR_NAME_BUFFER_TOO_SMALL"
};

/****************************************************************************************************************************************************/
/* SECTION: Global function definitions */
/****************************************************************************************************************************************************/

const char *XilSdnetReturnTypeToString(XilSdnetReturnType Value)
{
    if ((Value >= 0) && (Value < XIL_SDNET_NUM_RETURN_CODES))
    {
        return XilSdnetReturnTypeStrings[Value];
    }

    return "XIL_SDNET_UNKNOWN_RETURN_CODE";
}

XilSdnetReturnType XilSdnetStubEnvIf(XilSdnetEnvIf *EnvIfPtr)
{
    /* Initial parameter validation */
    if (EnvIfPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Platform-specific contexts can legitimately be set to NULL if the corresponding functions don't need a context, hence the statement below */
    EnvIfPtr->UserCtx = NULL;

    /* Install stubs for each platform-specific function */
    EnvIfPtr->WordWrite32 = XilSdnetWordWrite32Stub;
    EnvIfPtr->WordRead32 = XilSdnetWordRead32Stub;
    EnvIfPtr->LogError = XilSdnetWordLogStub;
    EnvIfPtr->LogInfo = XilSdnetWordLogStub;

    return XIL_SDNET_SUCCESS;
}

XilSdnetReturnType XilSdnetValidateEnvIf(XilSdnetEnvIf *EnvIfPtr)
{
    /* Initial parameter validation */
    if (EnvIfPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE;
    }

    /* Validate that each platform-specific function points somewhere - the context structure is omitted since NULL is potentially valid for it */
    if (EnvIfPtr->WordWrite32 == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE;
    }

    if (EnvIfPtr->WordRead32 == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE;
    }

    if (EnvIfPtr->LogError == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE;
    }

    if (EnvIfPtr->LogInfo == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_INVALID_ENVIRONMENT_INTERFACE;
    }

    /* Checking EnvIfPtr->UserCtx against NULL is deliberately omitted since NULL may/may not be valid */

    return XIL_SDNET_SUCCESS;
}

XilSdnetReturnType XilSdnetLogError(XilSdnetEnvIf *EnvIfPtr, const char *FormatStringPtr, ...)
{
    va_list VaArgs;
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    char Buf[XIL_SDNET_LOG_BUF_SIZE_BYTES] = "";
    int MessageLength = 0;

    /* Validate received parameters */
    if ((EnvIfPtr == NULL) || (FormatStringPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Construct the message string from the provided argument list */
    va_start(VaArgs, FormatStringPtr);
    MessageLength = vsnprintf(Buf, sizeof(Buf), FormatStringPtr, VaArgs);
    va_end(VaArgs);

    /* Emit the message string if it was constructed successfully */
    if ((MessageLength >= 0) && (size_t)MessageLength < sizeof(Buf))
    {
        EnvIfPtr->LogError(EnvIfPtr, Buf);
    }
    else
    {
        Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    return Result;
}

XilSdnetReturnType XilSdnetLogInfo(XilSdnetEnvIf *EnvIfPtr, const char *FormatStringPtr, ...)
{
    va_list VaArgs;
    XilSdnetReturnType Result = XIL_SDNET_SUCCESS;
    char Buf[XIL_SDNET_LOG_BUF_SIZE_BYTES] = "";
    int MessageLength = 0;

    /* Validate received parameters */
    if ((EnvIfPtr == NULL) || (FormatStringPtr == NULL))
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Construct the message string from the provided argument list */
    va_start(VaArgs, FormatStringPtr);
    MessageLength = vsnprintf(Buf, sizeof(Buf), FormatStringPtr, VaArgs);
    va_end(VaArgs);

    /* Emit the message string if it was constructed successfully */
    if ((MessageLength >= 0) && (size_t)MessageLength < sizeof(Buf))
    {
        EnvIfPtr->LogInfo(EnvIfPtr, Buf);
    }
    else
    {
        Result = XIL_SDNET_GENERAL_ERR_INTERNAL_ASSERTION;
    }

    return Result;
}

/****************************************************************************************************************************************************/
/* SECTION: Local function definitions */
/****************************************************************************************************************************************************/

XilSdnetReturnType XilSdnetWordWrite32Stub(XilSdnetEnvIf *EnvIfPtr, XilSdnetAddressType Address, uint32_t WriteValue)
{
    if (EnvIfPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Unused parameters */
    (void)Address;
    (void)WriteValue;

    return XIL_SDNET_SUCCESS;
}

XilSdnetReturnType XilSdnetWordRead32Stub(XilSdnetEnvIf *EnvIfPtr, XilSdnetAddressType Address, uint32_t *ReadValuePtr)
{
    if (EnvIfPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (ReadValuePtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    /* Unused parameter */
    (void)Address;

    return XIL_SDNET_SUCCESS;
}

XilSdnetReturnType XilSdnetWordLogStub(XilSdnetEnvIf *EnvIfPtr, const char *MessagePtr)
{
    if (EnvIfPtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    if (MessagePtr == NULL)
    {
        return XIL_SDNET_GENERAL_ERR_NULL_PARAM;
    }

    return XIL_SDNET_SUCCESS;
}
