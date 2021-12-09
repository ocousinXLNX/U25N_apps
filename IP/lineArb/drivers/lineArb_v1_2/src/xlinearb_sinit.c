// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlinearb.h"

extern XLinearb_Config XLinearb_ConfigTable[];

XLinearb_Config *XLinearb_LookupConfig(u16 DeviceId) {
	XLinearb_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLINEARB_NUM_INSTANCES; Index++) {
		if (XLinearb_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLinearb_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLinearb_Initialize(XLinearb *InstancePtr, u16 DeviceId) {
	XLinearb_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLinearb_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLinearb_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

