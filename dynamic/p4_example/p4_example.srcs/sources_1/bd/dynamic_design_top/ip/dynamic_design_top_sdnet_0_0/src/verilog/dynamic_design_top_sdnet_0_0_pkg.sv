//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2015 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// US ExportControl: EAR 3E001
//
//
//       Owner:
//       Revision:       $Id: //IP5/projects/xilinx-2000/sdnet-3107/HEAD/proj/design/xpath/data/ip/xilinx/sdnet/src/hw/top/ttcl/sdnet_wrapper_pkg.ttcl#26 $
//                       $Author: dkiernan $
//                       $DateTime: 2020/06/22 02:47:37 $
//                       $Change: 2920834 $
//
//       Description:
//
//////////////////////////////////////////////////////////////////////////////

package dynamic_design_top_sdnet_0_0_pkg;

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////

    // IP configuration info
    localparam JSON_FILE             = "/scratch/kestera/projects/DFX/U25N_DFX/dynamic/p4_example/p4_example.srcs/sources_1/bd/dynamic_design_top/ip/dynamic_design_top_sdnet_0_0/main.json";
    localparam P4_FILE               = "/scratch/kestera/projects/DFX/U25N_DFX/dynamic/p4_example/p4_example.srcs/sources_1/echo.p4";
    localparam P4C_ARGS              = " ";

    localparam PACKET_RATE           = 200.0;
    localparam AXIS_CLK_FREQ_MHZ     = 200.0;
	localparam CAM_MEM_MULT          = 1;
	localparam CAM_MEM_CLK_FREQ_MHZ  = CAM_MEM_MULT * AXIS_CLK_FREQ_MHZ;
    localparam OUT_META_FOR_DROP     = 0;
    localparam TOTAL_LATENCY         = 24;

    localparam TDATA_NUM_BYTES       = 64;
    localparam AXIS_DATA_WIDTH       = 512;
    localparam USER_META_DATA_WIDTH  = 16;
    localparam NUM_USER_EXTERNS      = 1;
    localparam USER_EXTERN_IN_WIDTH  = 1;
    localparam USER_EXTERN_OUT_WIDTH = 1;
    localparam S_AXI_DATA_WIDTH      = 32;
    localparam S_AXI_ADDR_WIDTH      = 1;
    localparam M_AXI_HBM_NUM_SLOTS   = 0;
    localparam M_AXI_HBM_DATA_WIDTH  = 256;
    localparam M_AXI_HBM_ADDR_WIDTH  = 33;
    localparam M_AXI_HBM_ID_WIDTH    = 6;
    localparam M_AXI_HBM_LEN_WIDTH   = 4;

    // Metadata interface info
    localparam METADATA_ECHO_PORT_WIDTH = 16;
    localparam METADATA_ECHO_PORT_MSB   = 15;
    localparam METADATA_ECHO_PORT_LSB   = 0;

    // User Extern interface info

////////////////////////////////////////////////////////////////////////////////
// Declarations
////////////////////////////////////////////////////////////////////////////////

    // Metadata top-struct
    typedef struct packed {
        logic [15:0] echo_port;
    } USER_META_DATA_T;

`ifndef SYNTHESIS

    // Common internal data structures
    typedef chandle XilSdnetCamCtx;
    typedef chandle XilSdnetTargetBuildInfoCtx;
    typedef chandle XilSdnetTargetInterruptCtx;
    typedef byte byteArray [127:0];

    // Select which type of endian is used
    typedef enum {
        XIL_SDNET_LITTLE_ENDIAN,    /**< use the little endian format */
        XIL_SDNET_BIG_ENDIAN,       /**< use the big endian format */
        XIL_SDNET_NUM_ENDIAN        /**< For validation by driver - do not use */
    } XilSdnetEndian;

    // Selects which type of mode is used to implement the table
    typedef enum {
        XIL_SDNET_TABLE_MODE_BCAM,    /**< Table configured as exact match or BCAM */
        XIL_SDNET_TABLE_MODE_STCAM,   /**< Table configured as lpm or STCAM */
        XIL_SDNET_TABLE_MODE_TCAM,    /**< Table configured as ternary or TCAM */
        XIL_SDNET_TABLE_MODE_DCAM,    /**< Table configured as direct or DCAM */
        XIL_SDNET_TABLE_MODE_TINYCAM, /**< Table configured as tiny CAM */
        XIL_SDNET_NUM_TABLE_MODES     /**< For validation by driver - do not use */
    } XilSdnetTableMode;

    // Selects which type of FPGA memory resources are used to implement the CAm
    typedef enum {
        XIL_SDNET_CAM_MEM_AUTO,     /**< Automatically selects between BRAM and URAM based on CAm size */
        XIL_SDNET_CAM_MEM_BRAM,     /**< CAM storage uses block RAM  */
        XIL_SDNET_CAM_MEM_URAM,     /**< CAM storage uses ultra RAM  */
        XIL_SDNET_CAM_MEM_HBM,      /**< CAM storage uses High Bandwidth Memory  */
        XIL_SDNET_NUM_CAM_MEM_TYPES /**< For validation by driver - do not use */
    } XilSdnetCamMemType;

    // Selects what type of optimization that was applied to the implemented CAM
    typedef enum {
        XIL_SDNET_CAM_OPTIMIZE_NONE,         /**< No optimizations */
        XIL_SDNET_CAM_OPTIMIZE_RAM,          /**< Used to reduce ram cost with a potentially higher logic cost.
                                                  Reducing both ram and logic is not possible. Not supported for hbm  */
        XIL_SDNET_CAM_OPTIMIZE_LOGIC,        /**< Used to reduce logic cost with a potentially higher ram cost.
                                                  Reducing both ram and logic is not possible. Not supported for hbm */
        XIL_SDNET_NUM_CAM_OPTIMIZATION_TYPE  /**< For validation by driver - do not use */
    } XilSdnetCamOptimizationType;

    typedef enum {
        XIL_SDNET_INTERRUPT_ECC_ERROR_SINGLE_BIT,
        XIL_SDNET_INTERRUPT_ECC_ERROR_DOUBLE_BIT,
        XIL_SDNET_INTERRUPT_ECC_ERROR_ALL,
        XIL_SDNET_INTERRUPT_ECC_ERROR_TYPE_MAX
    } XilSdnetTargetInterruptEccErrorType;

    // Structure to define the XilSdnetVersion
    typedef struct {
        byte Major;    /**< SDNet major version number*/
        byte Minor;    /**< SDNet minor version number*/
        byte Revision; /**< SDNet revision number*/
    } XilSdnetVersion;

    // Structure to define the XilSdnetVersion
    typedef struct {
        int PacketRateMps;      /**< Packet rate in Mp/s*/
        int CamMemoryClockMhz;  /**< CAM memory clock in MHz*/
        int AxiStreamClockMhz;  /**< AXI Stream clock in MHz*/
    } XilSdnetTargetBuildInfoIpSettings;

    typedef struct {
        int unsigned SingleBitErrorStatus; /**< 1 indicates present, 0 indicates not present */
        int unsigned DoubleBitErrorStatus; /**< 1 indicates present, 0 indicates not present */
    } XilSdnetTargetInterruptEccErrorStatus;


    // Structure to define the CAM configuration
    typedef struct {
        longint                     BaseAddr;           /**< Base address of the CAM */
        string                      FormatStringPtr;    /**< Format string - refer to \ref fmt for details */
        int                         NumEntries;         /**< Number of entries the CAM holds */
        int                         RamFrequencyHz;     /**< RAM clock frequency, specified in Hertz */
        int                         LookupFrequencyHz;  /**< Lookup engine clock frequency, specified in Hertz */
        int                         LookupsPerSec;      /**< Number of lookups per second */
        shortint                    ResponseSizeBits;   /**< Size of CAM response data, specified in bits */
        byte                        PrioritySizeBits;   /**< Size of priority field, specified in bits (applies to TCAM only, also see \ref XIL_SDNET_PRIORITY_SIZE_DEFAULT) */
        byte                        NumMasks;           /**< STCAM only: specifies the number of unique masks that are available */
        XilSdnetEndian              Endian;             /**< Format of key, mask and response data */
        XilSdnetCamMemType          MemType;            /**< FPGA memory resource selection */
        XilSdnetCamOptimizationType OptimizationType;   /**< Optimization type applied to the CAM */
    } XilSdnetCamConfig;

    // Structure to define a name-value pairs
    typedef struct {
       string  NameStringPtr;    /**< Name of the attribute */
       int     Value;            /**< value of the attribute */
    } XilSdnetAttribute;

    // Structure to define the action configuration
    typedef struct {
        string             NameStringPtr;    /**< Name of the action */
        int                ParamListSize;    /**< Total number of parameters */
        XilSdnetAttribute  ParamListPtr[];   /**< List of parameters */
    } XilSdnetAction;

    // Structure to define the table configuration
    typedef struct {
        string             NameStringPtr;     /**< Name of the table */
        XilSdnetTableMode  Mode;              /**< Table mode selection */
        XilSdnetCamCtx     PrivateCtxPtr;     /**< Internal context data used by driver implementation */
        int                KeySizeBits;       /**< Size of table key data, specified in bits */
        XilSdnetCamConfig  Config;            /**< CAM configuration */
        int                ActionIdWidthBits; /**< Size of action ID field in response data, specified in bits */
        int                ActionListSize;    /**< Total number of associated actions */
        XilSdnetAction     ActionListPtr[];   /**< List of associated actions */
    } XilSdnetTable;

    // Structure to define the FIFOs names
    typedef struct {
        string NameStringPtr;
    } XilSdnetFifoName;

    // Configuration that describes the block information of the SDNet instance
    typedef struct {
        longint BaseAddr;   /**< Base address within the SDNet instance */
    } XilSdnetBuildInfoConfig;

    // Configuration that describes the interrupt controller of the SDNet instance
    typedef struct {
        longint           BaseAddr;           /**< Base address within the SDNet instance */
        int               NumElements;        /**< Number of P4 Elements present in the SDNet instance */
        int               NumFifos;           /**< Number of internal FIFOs present in the SDNet instance */
        XilSdnetFifoName  FifoNameList[2];    /**< List of FIFOs name that are present in the SDNet instance */
    } XilSdnetInterruptConfig;

    // Structure to define SDNet's configuration
    typedef struct {
        XilSdnetEndian            Endian;         /**< Global endianness setting - applies to all P4 element drivers instantiated by the target */
        int                       TableListSize;  /**< Total number of tables in the design */
        XilSdnetTable             TableListPtr[]; /**< List of tables in the design */
    } XilSdnetConfig;

////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////

    // CAM priority width default value
    int XIL_SDNET_CAM_PRIORITY_SIZE_DEFAULT = 'hFF;

    // User metadata definition
    XilSdnetAttribute XilSdnetUserMetadataFields[] =
    '{
        '{
            NameStringPtr : "metadata.echo_port",
            Value         : 16
        }
    };
    // Action 'echo_packet' Parameters list
    XilSdnetAttribute XilSdnetActionParams_echo_packet[] =
    {
    };
    // Action 'echo_packet' definition
    XilSdnetAction XilSdnetAction_echo_packet =
    '{
        NameStringPtr : "echo_packet",
        ParamListSize : 0,
        ParamListPtr  : XilSdnetActionParams_echo_packet
    };

    // list of all tables defined in the design
    XilSdnetTable XilSdnetTableList[] =
    {
    };

    // Top Level SDNet Configuration
    XilSdnetConfig XilSdnetConfig_dynamic_design_top_sdnet_0_0 =
    '{
        Endian        : XIL_SDNET_LITTLE_ENDIAN,
        TableListSize : 0,
        TableListPtr  : XilSdnetTableList
    };

////////////////////////////////////////////////////////////////////////////////
// Tasks and Functions
////////////////////////////////////////////////////////////////////////////////

    // get table ID
    function int get_table_id;
       input string table_name;

       for (int tbl_idx = 0; tbl_idx < XilSdnetTableList.size(); tbl_idx++) begin
           if (table_name == XilSdnetTableList[tbl_idx].NameStringPtr) begin
               return tbl_idx;
           end
       end

       return -1;
    endfunction

    // get action ID
    function int get_action_id;
       input string table_name;
       input string action_name;

       for (int tbl_idx = 0; tbl_idx < XilSdnetTableList.size(); tbl_idx++) begin
           if (table_name == XilSdnetTableList[tbl_idx].NameStringPtr) begin
               for (int act_idx = 0; act_idx < XilSdnetTableList[tbl_idx].ActionListPtr.size(); act_idx++) begin
                   if (action_name == XilSdnetTableList[tbl_idx].ActionListPtr[act_idx].NameStringPtr) begin
                       return act_idx;
                   end
               end
           end
       end

       return -1;
    endfunction

    // Initialize and instantiate all required drivers: tables, externs, etc. ...
    task initialize;
        input string axi_lite_master;

        chandle env;
        env = XilSdnetDpiGetEnv(axi_lite_master);

        if (env != null) begin
            for (int tbl_idx = 0; tbl_idx < XilSdnetTableList.size(); tbl_idx++) begin
                case (XilSdnetTableList[tbl_idx].Mode)
                    XIL_SDNET_TABLE_MODE_BCAM : begin
                        XilSdnetBcamInit(XilSdnetTableList[tbl_idx].PrivateCtxPtr, env, XilSdnetTableList[tbl_idx].Config);
                    end
                    XIL_SDNET_TABLE_MODE_TCAM : begin
                        XilSdnetTcamInit(XilSdnetTableList[tbl_idx].PrivateCtxPtr, env, XilSdnetTableList[tbl_idx].Config);
                    end
                    XIL_SDNET_TABLE_MODE_STCAM : begin
                        XilSdnetStcamInit(XilSdnetTableList[tbl_idx].PrivateCtxPtr, env, XilSdnetTableList[tbl_idx].Config);
                    end
                    XIL_SDNET_TABLE_MODE_DCAM : begin
                        XilSdnetDcamInit(XilSdnetTableList[tbl_idx].PrivateCtxPtr, env, XilSdnetTableList[tbl_idx].Config);
                    end
                endcase
            end
        end

    endtask

    // Terminate and destroy all instantiated drivers: tables, externs, etc. ...
    task terminate;

        for (int tbl_idx = 0; tbl_idx < XilSdnetTableList.size(); tbl_idx++) begin
            case (XilSdnetTableList[tbl_idx].Mode)
                XIL_SDNET_TABLE_MODE_BCAM : begin
                    XilSdnetBcamExit(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
                XIL_SDNET_TABLE_MODE_TCAM : begin
                    XilSdnetTcamExit(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
                XIL_SDNET_TABLE_MODE_STCAM : begin
                    XilSdnetStcamExit(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
                XIL_SDNET_TABLE_MODE_DCAM : begin
                    XilSdnetDcamExit(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
            endcase
        end

    endtask

    // Add entry to a table.
    // Usage: table_add <table name> <entry key> <key mask> <entry response> <entry priority>
    task table_add;
        input  string      table_name;
        input  bit[1023:0] entry_key;
        input  bit[1023:0] key_mask;
        input  bit[1023:0] entry_response;
        input  int         entry_priority;

        int tbl_idx;
        tbl_idx = get_table_id(table_name);

        case (XilSdnetTableList[tbl_idx].Mode)
            XIL_SDNET_TABLE_MODE_BCAM : begin
                XilSdnetBcamInsert(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(entry_response));
            end
            XIL_SDNET_TABLE_MODE_TCAM : begin
                XilSdnetTcamInsert(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(key_mask), entry_priority, byteArray'(entry_response));
            end
            XIL_SDNET_TABLE_MODE_STCAM : begin
                XilSdnetStcamInsert(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(key_mask), entry_priority, byteArray'(entry_response));
            end
            XIL_SDNET_TABLE_MODE_DCAM : begin
                XilSdnetDcamInsert(XilSdnetTableList[tbl_idx].PrivateCtxPtr, int'(entry_key), byteArray'(entry_response));
            end
        endcase

    endtask

    // Modify entry from a table.
    // Usage: table_modify <table name> <entry key> <key mask> <entry response>
    task table_modify;
        input string      table_name;
        input bit[1023:0] entry_key;
        input bit[1023:0] key_mask;
        input bit[1023:0] entry_response;

        int tbl_idx;
        tbl_idx = get_table_id(table_name);

        case (XilSdnetTableList[tbl_idx].Mode)
            XIL_SDNET_TABLE_MODE_BCAM : begin
                XilSdnetBcamUpdate(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(entry_response));
            end
            XIL_SDNET_TABLE_MODE_TCAM : begin
                XilSdnetTcamUpdate(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(key_mask), byteArray'(entry_response));
            end
            XIL_SDNET_TABLE_MODE_STCAM : begin
                XilSdnetStcamUpdate(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(key_mask), byteArray'(entry_response));
            end
            XIL_SDNET_TABLE_MODE_DCAM : begin
                XilSdnetDcamUpdate(XilSdnetTableList[tbl_idx].PrivateCtxPtr, int'(entry_key), byteArray'(entry_response));
            end
        endcase

    endtask

    // Delete entry from a match table.
    // Usage: table_delete <table name> <entry key> <key mask>
    task table_delete;
        input string      table_name;
        input bit[1023:0] entry_key;
        input bit[1023:0] key_mask;

        int tbl_idx;
        tbl_idx = get_table_id(table_name);

        case (XilSdnetTableList[tbl_idx].Mode)
            XIL_SDNET_TABLE_MODE_BCAM : begin
                XilSdnetBcamDelete(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key));
            end
            XIL_SDNET_TABLE_MODE_TCAM : begin
                XilSdnetTcamDelete(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(key_mask));
            end
            XIL_SDNET_TABLE_MODE_STCAM : begin
                XilSdnetStcamDelete(XilSdnetTableList[tbl_idx].PrivateCtxPtr, byteArray'(entry_key), byteArray'(key_mask));
            end
            XIL_SDNET_TABLE_MODE_DCAM : begin
                XilSdnetDcamDelete(XilSdnetTableList[tbl_idx].PrivateCtxPtr, int'(entry_key));
            end
        endcase

    endtask

    // Reset all state in the switch (tables and externs, etc.), but P4 config is preserved.
    // Usage: reset_state
    task reset_state;

        for (int tbl_idx = 0; tbl_idx < XilSdnetTableList.size(); tbl_idx++) begin
            case (XilSdnetTableList[tbl_idx].Mode)
                XIL_SDNET_TABLE_MODE_BCAM : begin
                    XilSdnetBcamReset(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
                XIL_SDNET_TABLE_MODE_TCAM : begin
                    XilSdnetTcamReset(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
                XIL_SDNET_TABLE_MODE_STCAM : begin
                    XilSdnetStcamReset(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
                XIL_SDNET_TABLE_MODE_DCAM : begin
                    XilSdnetDcamReset(XilSdnetTableList[tbl_idx].PrivateCtxPtr);
                end
            endcase
        end

    endtask

////////////////////////////////////////////////////////////////////////////////
// DPI imports
////////////////////////////////////////////////////////////////////////////////

    // utilities
    import "DPI-C" context function chandle XilSdnetDpiGetEnv(string hier_path);
    import "DPI-C" context function chandle XilSdnetDpiByteArrayCreate(int unsigned bit_len);
    import "DPI-C" context function void    XilSdnetDpiStringToByteArray(string str, chandle key_mask, int unsigned bit_len);
    import "DPI-C" context function void    XilSdnetDpiByteArrayDestroy(chandle key_mask);
    import "DPI-C" context function void    XilSdnetCamSetDebugFlags(int unsigned flags);


    // BuildInfo API
    import "DPI-C" context task XilSdnetTargetBuildInfoInit(inout XilSdnetTargetBuildInfoCtx ctx, input chandle env, input XilSdnetBuildInfoConfig cfg);
    import "DPI-C" context task XilSdnetTargetBuildInfoGetIpVersion(inout XilSdnetTargetBuildInfoCtx ctx, XilSdnetVersion ip_version);
    import "DPI-C" context task XilSdnetTargetBuildInfoGetIpSettings(inout XilSdnetTargetBuildInfoCtx ctx, XilSdnetTargetBuildInfoIpSettings ip_settings);
    import "DPI-C" context task XilSdnetTargetBuildInfoExit(inout XilSdnetTargetBuildInfoCtx ctx);

    // Interrupt Driver API
    import "DPI-C" context function int    XilSdnetTargetInterruptGetElementCount(inout XilSdnetTargetInterruptCtx ctx, int unsigned num_elements);
    import "DPI-C" context function int    XilSdnetTargetInterruptGetFifoCount(inout XilSdnetTargetInterruptCtx ctx, int unsigned num_fifos);
    import "DPI-C" context function int    XilSdnetTargetInterruptGetFifoIndexByName(inout XilSdnetTargetInterruptCtx ctx, input string fifo_name, int unsigned idx);

    import "DPI-C" context task XilSdnetTargetInterruptInit(inout XilSdnetTargetInterruptCtx ctx, input chandle env, input XilSdnetInterruptConfig cfg);
    import "DPI-C" context task XilSdnetTargetInterruptEnableElementEccErrorById(inout XilSdnetTargetInterruptCtx ctx, input int unsigned element_id, input XilSdnetTargetInterruptEccErrorType ecc_type);
    import "DPI-C" context task XilSdnetTargetInterruptDisableElementEccErrorById(inout XilSdnetTargetInterruptCtx ctx, input int unsigned element_id, input XilSdnetTargetInterruptEccErrorType ecc_type);
    import "DPI-C" context task XilSdnetTargetInterruptGetElementEccErrorStatusById(inout XilSdnetTargetInterruptCtx ctx, input int unsigned element_id, XilSdnetTargetInterruptEccErrorStatus status);
    import "DPI-C" context task XilSdnetTargetInterruptClearElementEccErrorStatusById(inout XilSdnetTargetInterruptCtx ctx, input int unsigned element_id, input XilSdnetTargetInterruptEccErrorType ecc_type);
    import "DPI-C" context task XilSdnetTargetInterruptEnableFifoEccErrorByIndex(inout XilSdnetTargetInterruptCtx ctx, input int unsigned fifo_idx, input XilSdnetTargetInterruptEccErrorType ecc_type);
    import "DPI-C" context task XilSdnetTargetInterruptDisableFifoEccErrorByIndex(inout XilSdnetTargetInterruptCtx ctx, input int unsigned fifo_idx, input XilSdnetTargetInterruptEccErrorType ecc_type);
    import "DPI-C" context task XilSdnetTargetInterruptGetFifoEccErrorStatusByIndex(inout XilSdnetTargetInterruptCtx ctx, input int unsigned fifo_idx, XilSdnetTargetInterruptEccErrorStatus status);
    import "DPI-C" context task XilSdnetTargetInterruptClearFifoEccErrorStatusByIndex(inout XilSdnetTargetInterruptCtx ctx, input int unsigned fifo_idx, input XilSdnetTargetInterruptEccErrorType ecc_type);
    import "DPI-C" context task XilSdnetTargetInterruptExit(inout XilSdnetTargetInterruptCtx ctx);



    // BCAM API
    import "DPI-C" context task XilSdnetBcamInit(inout XilSdnetCamCtx ctx, input chandle env, XilSdnetCamConfig cfg);
    import "DPI-C" context task XilSdnetBcamInsert(inout XilSdnetCamCtx ctx, input byteArray key, byteArray resp);
    import "DPI-C" context task XilSdnetBcamUpdate(inout XilSdnetCamCtx ctx, input byteArray key, byteArray resp);
    import "DPI-C" context task XilSdnetBcamGetByResponse(inout XilSdnetCamCtx ctx, input byteArray resp, byteArray resp_mask, inout int unsigned pos, byteArray key);
    import "DPI-C" context task XilSdnetBcamGetByKey(inout XilSdnetCamCtx ctx, input byteArray key, inout byteArray resp);
    import "DPI-C" context task XilSdnetBcamDelete(inout XilSdnetCamCtx ctx, input byteArray key);
    import "DPI-C" context task XilSdnetBcamGetEccCountersClearOnRead(inout XilSdnetCamCtx ctx, inout int unsigned corrected_single, inout int unsigned uncorrected_double);
    import "DPI-C" context task XilSdnetBcamGetEccAddressesClearOnRead(inout XilSdnetCamCtx ctx, inout int unsigned failing_address_single, inout int unsigned failing_address_double);
    import "DPI-C" context task XilSdnetBcamReset(inout XilSdnetCamCtx ctx);
    import "DPI-C" context task XilSdnetBcamExit(inout XilSdnetCamCtx ctx);

    // TCAM API
    import "DPI-C" context task XilSdnetTcamInit(inout XilSdnetCamCtx ctx, input chandle env, XilSdnetCamConfig cfg);
    import "DPI-C" context task XilSdnetTcamInsert(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask, int unsigned prio, byteArray resp);
    import "DPI-C" context task XilSdnetTcamUpdate(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask, byteArray resp);
    import "DPI-C" context task XilSdnetTcamGetByResponse(inout XilSdnetCamCtx ctx, input byteArray resp, byteArray resp_mask, inout int unsigned pos, byteArray key, byteArray key_mask);
    import "DPI-C" context task XilSdnetTcamGetByKey(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask, inout int unsigned prio, byteArray resp);
    import "DPI-C" context task XilSdnetTcamLookup(inout XilSdnetCamCtx ctx, input byteArray key, inout byteArray resp);
    import "DPI-C" context task XilSdnetTcamDelete(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask);
    import "DPI-C" context task XilSdnetTcamGetEccCountersClearOnRead(inout XilSdnetCamCtx ctx, inout int unsigned corrected_single, inout int unsigned uncorrected_double);
    import "DPI-C" context task XilSdnetTcamGetEccAddressesClearOnRead(inout XilSdnetCamCtx ctx, inout int unsigned failing_address_single, inout int unsigned failing_address_double);
    import "DPI-C" context task XilSdnetTcamReset(inout XilSdnetCamCtx ctx);
    import "DPI-C" context task XilSdnetTcamExit(inout XilSdnetCamCtx ctx);

    // STCAM API
    import "DPI-C" context task XilSdnetStcamInit(inout XilSdnetCamCtx ctx, input chandle env, XilSdnetCamConfig cfg);
    import "DPI-C" context task XilSdnetStcamInsert(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask, int unsigned prio, byteArray resp);
    import "DPI-C" context task XilSdnetStcamUpdate(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask, byteArray resp);
    import "DPI-C" context task XilSdnetStcamGetByResponse(inout XilSdnetCamCtx ctx, input byteArray resp, byteArray resp_mask, inout int unsigned pos, byteArray key, byteArray key_mask);
    import "DPI-C" context task XilSdnetStcamGetByKey(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask, inout int unsigned prio, byteArray resp);
    import "DPI-C" context task XilSdnetStcamLookup(inout XilSdnetCamCtx ctx, input byteArray key, inout byteArray resp);
    import "DPI-C" context task XilSdnetStcamDelete(inout XilSdnetCamCtx ctx, input byteArray key, byteArray mask);
    import "DPI-C" context task XilSdnetStcamGetEccCountersClearOnRead(inout XilSdnetCamCtx ctx, inout int unsigned corrected_single, inout int unsigned uncorrected_double);
    import "DPI-C" context task XilSdnetStcamGetEccAddressesClearOnRead(inout XilSdnetCamCtx ctx, inout int unsigned failing_address_single, inout int unsigned failing_address_double);
    import "DPI-C" context task XilSdnetStcamReset(inout XilSdnetCamCtx ctx);
    import "DPI-C" context task XilSdnetStcamExit(inout XilSdnetCamCtx ctx);

    // DCAM API
    import "DPI-C" context task XilSdnetDcamInit(inout XilSdnetCamCtx ctx, input chandle env, XilSdnetCamConfig cfg);
    import "DPI-C" context task XilSdnetDcamInsert(inout XilSdnetCamCtx ctx, input int unsigned key, byteArray resp);
    import "DPI-C" context task XilSdnetDcamUpdate(inout XilSdnetCamCtx ctx, input int unsigned key, byteArray resp);
    import "DPI-C" context task XilSdnetDcamGetByResponse(inout XilSdnetCamCtx ctx, input byteArray resp, byteArray resp_mask, inout int unsigned pos, inout int unsigned key);
    import "DPI-C" context task XilSdnetDcamLookup(inout XilSdnetCamCtx ctx, input int unsigned key, inout byteArray resp);
    import "DPI-C" context task XilSdnetDcamDelete(inout XilSdnetCamCtx ctx, input int unsigned key);
    import "DPI-C" context task XilSdnetDcamReset(inout XilSdnetCamCtx ctx);
    import "DPI-C" context task XilSdnetDcamExit(inout XilSdnetCamCtx ctx);

`endif

endpackage

//--------------------------------------------------------------------------
// Machine-generated file - do NOT modify by hand !
// File created on 30 of September, 2021 @ 14:00:51
// by SDNet IP, version v2.2 revision 1
//--------------------------------------------------------------------------
