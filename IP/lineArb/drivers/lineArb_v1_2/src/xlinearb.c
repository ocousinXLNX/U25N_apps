// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xlinearb.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLinearb_CfgInitialize(XLinearb *InstancePtr, XLinearb_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLinearb_Set_confFilterDstIPsA_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_0_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_1_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_2_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_3_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_4_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_5_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_6_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_7_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_8_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_9_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_10_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_11_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_12_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_13_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_14_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_15_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_16_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_17_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_18_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_19_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_20_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_21_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_22_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_23_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_24_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_25_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_26_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_27_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_28_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_29_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_30_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsA_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_31_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsA_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSA_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_0_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_1_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_2_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_3_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_4_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_5_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_6_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_7_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_8_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_9_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_10_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_11_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_12_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_13_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_14_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_15_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_16_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_17_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_18_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_19_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_20_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_21_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_22_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_23_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_24_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_25_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_26_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_27_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_28_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_29_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_30_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsA_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_31_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsA_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSA_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_0_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_1_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_2_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_3_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_4_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_5_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_6_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_7_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_8_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_9_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_10_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_11_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_12_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_13_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_14_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_15_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_16_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_17_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_18_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_19_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_20_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_21_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_22_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_23_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_24_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_25_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_26_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_27_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_28_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_29_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_30_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstIPsB_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_31_DATA, Data);
}

u32 XLinearb_Get_confFilterDstIPsB_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTIPSB_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_0_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_1_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_2_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_3_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_4_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_5_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_6_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_7_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_8_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_9_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_10_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_11_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_12_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_13_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_14_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_15_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_16_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_17_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_18_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_19_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_20_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_21_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_22_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_23_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_24_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_25_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_26_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_27_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_28_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_29_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_30_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterDstPortsB_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_31_DATA, Data);
}

u32 XLinearb_Get_confFilterDstPortsB_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERDSTPORTSB_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_0_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_1_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_2_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_3_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_4_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_5_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_6_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_7_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_8_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_9_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_10_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_11_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_12_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_13_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_14_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_15_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_16_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_17_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_18_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_19_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_20_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_21_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_22_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_23_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_24_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_25_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_26_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_27_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_28_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_29_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_30_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsA_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_31_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsA_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSA_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_0_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_1_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_2_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_3_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_4_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_5_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_6_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_7_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_8_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_9_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_10_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_11_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_12_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_13_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_14_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_15_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_16_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_17_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_18_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_19_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_20_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_21_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_22_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_23_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_24_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_25_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_26_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_27_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_28_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_29_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_30_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsA_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_31_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsA_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSA_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_0_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_1_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_2_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_3_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_4_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_5_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_6_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_7_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_8_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_9_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_10_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_11_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_12_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_13_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_14_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_15_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_16_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_17_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_18_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_19_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_20_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_21_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_22_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_23_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_24_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_25_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_26_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_27_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_28_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_29_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_30_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcIPsB_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_31_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcIPsB_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCIPSB_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_0_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_0_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_1_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_1_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_2_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_2_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_3_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_3_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_4(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_4_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_4(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_4_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_5(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_5_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_5(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_5_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_6(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_6_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_6(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_6_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_7(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_7_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_7_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_8(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_8_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_8_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_9(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_9_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_9_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_10(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_10_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_10_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_11(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_11_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_11_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_12(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_12_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_12_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_13(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_13_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_13_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_14(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_14_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_14_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_15(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_15_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_15_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_16(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_16_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_16_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_17(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_17_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_17_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_18(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_18_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_18_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_19(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_19_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_19_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_20(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_20_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_20_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_21(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_21_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_21_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_22(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_22_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_22_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_23(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_23_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_23_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_24(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_24_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_24_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_25(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_25_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_25_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_26(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_26_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_26_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_27(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_27_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_27_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_28(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_28_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_28_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_29(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_29_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_29_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_30(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_30_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_30_DATA);
    return Data;
}

void XLinearb_Set_confFilterSrcPortsB_31(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_31_DATA, Data);
}

u32 XLinearb_Get_confFilterSrcPortsB_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERSRCPORTSB_31_DATA);
    return Data;
}

void XLinearb_Set_confFilterCsumAdj_0_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_0_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_0_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_0_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_0_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_0_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_0_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_0_O_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_confFilterCsumAdj_1_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_1_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_1_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_1_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_1_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_1_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_1_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_1_O_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_confFilterCsumAdj_2_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_2_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_2_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_2_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_2_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_2_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_2_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_2_O_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_confFilterCsumAdj_3_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_3_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_3_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_3_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_3_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_3_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_3_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_3_O_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_confFilterCsumAdj_4_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_4_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_4_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_4_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_4_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_4_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_4_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_4_O_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_confFilterCsumAdj_5_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_5_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_5_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_5_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_5_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_5_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_5_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_5_O_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_confFilterCsumAdj_6_i(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_6_I_DATA, Data);
}

u32 XLinearb_Get_confFilterCsumAdj_6_i(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_6_I_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_6_o(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_6_O_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_6_o_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_6_O_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_7(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_7_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_7_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_7_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_8(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_8_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_8_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_8_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_9(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_9_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_9_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_9_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_10(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_10_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_10_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_10_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_11(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_11_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_11_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_11_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_12(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_12_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_12_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_12_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_13(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_13_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_13_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_13_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_14(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_14_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_14_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_14_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_15(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_15_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_15_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_15_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_16(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_16_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_16_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_16_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_17(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_17_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_17_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_17_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_18(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_18_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_18_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_18_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_19(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_19_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_19_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_19_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_20(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_20_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_20_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_20_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_21(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_21_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_21_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_21_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_22(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_22_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_22_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_22_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_23(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_23_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_23_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_23_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_24(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_24_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_24_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_24_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_25(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_25_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_25_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_25_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_26(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_26_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_26_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_26_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_27(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_27_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_27_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_27_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_28(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_28_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_28_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_28_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_29(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_29_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_29_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_29_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_30(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_30_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_30_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_30_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_confFilterCsumAdj_31(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_31_DATA);
    return Data;
}

u32 XLinearb_Get_confFilterCsumAdj_31_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_CONFFILTERCSUMADJ_31_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_0_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_0_DATA);
    return Data;
}

u32 XLinearb_Get_ip_0_0_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_0_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_0_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_1_DATA);
    return Data;
}

u32 XLinearb_Get_ip_0_1_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_1_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_0_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_2_DATA);
    return Data;
}

u32 XLinearb_Get_ip_0_2_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_2_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_0_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_3_DATA);
    return Data;
}

u32 XLinearb_Get_ip_0_3_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_0_3_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_1_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_0_DATA);
    return Data;
}

u32 XLinearb_Get_ip_1_0_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_0_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_1_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_1_DATA);
    return Data;
}

u32 XLinearb_Get_ip_1_1_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_1_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_1_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_2_DATA);
    return Data;
}

u32 XLinearb_Get_ip_1_2_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_2_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_1_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_3_DATA);
    return Data;
}

u32 XLinearb_Get_ip_1_3_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_1_3_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_2_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_0_DATA);
    return Data;
}

u32 XLinearb_Get_ip_2_0_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_0_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_2_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_1_DATA);
    return Data;
}

u32 XLinearb_Get_ip_2_1_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_1_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_2_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_2_DATA);
    return Data;
}

u32 XLinearb_Get_ip_2_2_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_2_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_2_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_3_DATA);
    return Data;
}

u32 XLinearb_Get_ip_2_3_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_2_3_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_3_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_0_DATA);
    return Data;
}

u32 XLinearb_Get_ip_3_0_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_0_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_3_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_1_DATA);
    return Data;
}

u32 XLinearb_Get_ip_3_1_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_1_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_3_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_2_DATA);
    return Data;
}

u32 XLinearb_Get_ip_3_2_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_2_CTRL);
    return Data & 0x1;
}

u32 XLinearb_Get_ip_3_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_3_DATA);
    return Data;
}

u32 XLinearb_Get_ip_3_3_vld(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_IP_3_3_CTRL);
    return Data & 0x1;
}

void XLinearb_Set_stats_0_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_0_DATA, Data);
}

u32 XLinearb_Get_stats_0_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_0_DATA);
    return Data;
}

void XLinearb_Set_stats_0_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_1_DATA, Data);
}

u32 XLinearb_Get_stats_0_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_1_DATA);
    return Data;
}

void XLinearb_Set_stats_0_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_2_DATA, Data);
}

u32 XLinearb_Get_stats_0_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_2_DATA);
    return Data;
}

void XLinearb_Set_stats_0_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_3_DATA, Data);
}

u32 XLinearb_Get_stats_0_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_0_3_DATA);
    return Data;
}

void XLinearb_Set_stats_1_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_0_DATA, Data);
}

u32 XLinearb_Get_stats_1_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_0_DATA);
    return Data;
}

void XLinearb_Set_stats_1_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_1_DATA, Data);
}

u32 XLinearb_Get_stats_1_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_1_DATA);
    return Data;
}

void XLinearb_Set_stats_1_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_2_DATA, Data);
}

u32 XLinearb_Get_stats_1_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_2_DATA);
    return Data;
}

void XLinearb_Set_stats_1_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_3_DATA, Data);
}

u32 XLinearb_Get_stats_1_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_1_3_DATA);
    return Data;
}

void XLinearb_Set_stats_2_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_0_DATA, Data);
}

u32 XLinearb_Get_stats_2_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_0_DATA);
    return Data;
}

void XLinearb_Set_stats_2_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_1_DATA, Data);
}

u32 XLinearb_Get_stats_2_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_1_DATA);
    return Data;
}

void XLinearb_Set_stats_2_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_2_DATA, Data);
}

u32 XLinearb_Get_stats_2_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_2_DATA);
    return Data;
}

void XLinearb_Set_stats_2_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_3_DATA, Data);
}

u32 XLinearb_Get_stats_2_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_2_3_DATA);
    return Data;
}

void XLinearb_Set_stats_3_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_0_DATA, Data);
}

u32 XLinearb_Get_stats_3_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_0_DATA);
    return Data;
}

void XLinearb_Set_stats_3_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_1_DATA, Data);
}

u32 XLinearb_Get_stats_3_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_1_DATA);
    return Data;
}

void XLinearb_Set_stats_3_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_2_DATA, Data);
}

u32 XLinearb_Get_stats_3_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_2_DATA);
    return Data;
}

void XLinearb_Set_stats_3_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_3_DATA, Data);
}

u32 XLinearb_Get_stats_3_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_3_3_DATA);
    return Data;
}

void XLinearb_Set_stats_4_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_0_DATA, Data);
}

u32 XLinearb_Get_stats_4_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_0_DATA);
    return Data;
}

void XLinearb_Set_stats_4_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_1_DATA, Data);
}

u32 XLinearb_Get_stats_4_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_1_DATA);
    return Data;
}

void XLinearb_Set_stats_4_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_2_DATA, Data);
}

u32 XLinearb_Get_stats_4_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_2_DATA);
    return Data;
}

void XLinearb_Set_stats_4_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_3_DATA, Data);
}

u32 XLinearb_Get_stats_4_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_4_3_DATA);
    return Data;
}

void XLinearb_Set_stats_5_0(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_0_DATA, Data);
}

u32 XLinearb_Get_stats_5_0(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_0_DATA);
    return Data;
}

void XLinearb_Set_stats_5_1(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_1_DATA, Data);
}

u32 XLinearb_Get_stats_5_1(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_1_DATA);
    return Data;
}

void XLinearb_Set_stats_5_2(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_2_DATA, Data);
}

u32 XLinearb_Get_stats_5_2(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_2_DATA);
    return Data;
}

void XLinearb_Set_stats_5_3(XLinearb *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearb_WriteReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_3_DATA, Data);
}

u32 XLinearb_Get_stats_5_3(XLinearb *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearb_ReadReg(InstancePtr->Ctrl_BaseAddress, XLINEARB_CTRL_ADDR_STATS_5_3_DATA);
    return Data;
}

