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
//       Revision:       $Id: //Rodin/HEAD/src/products/sdnet/p4c-sdnet-opt/iprepo/encrypted/sdnet_v1_0/src/hw/top/ttcl/sdnet_wrapper_pkg.ttcl#35 $
//                       $Author: fmartin $
//                       $DateTime: 2020/06/29 08:16:49 $
//                       $Change: 2927269 $
//
//       Description:
//
//////////////////////////////////////////////////////////////////////////////

package ipsec_bd_sdnet_0_3_pkg;

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////

    // IP configuration info
    localparam JSON_FILE             = "/home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_1A/BD/ipsec_bd/ip/ipsec_bd_sdnet_0_3/main.json";
    localparam P4_FILE               = "/home/merin.baby/merin/xilu_u25b_ipsec/IPSEC_ENC_A0_16/IP/p4/PKT_FORWARD_ENC_A0_03.p4";
    localparam P4C_ARGS              = " ";

    localparam PACKET_RATE           = 333;
    localparam AXIS_CLK_FREQ_MHZ     = 333;
	localparam CAM_MEM_MULT          = 1;
	localparam CAM_MEM_CLK_FREQ_MHZ  = CAM_MEM_MULT * AXIS_CLK_FREQ_MHZ;
    localparam OUT_META_FOR_DROP     = 0;
    localparam TOTAL_LATENCY         = 121;

    localparam TDATA_NUM_BYTES       = 16;
    localparam AXIS_DATA_WIDTH       = 128;
    localparam USER_META_DATA_WIDTH  = 581;
    localparam NUM_USER_EXTERNS      = 1;
    localparam USER_EXTERN_IN_WIDTH  = 16;
    localparam USER_EXTERN_OUT_WIDTH = 160;
    localparam S_AXI_DATA_WIDTH      = 32;
    localparam S_AXI_ADDR_WIDTH      = 1;
    localparam M_AXI_HBM_NUM_SLOTS   = 0;
    localparam M_AXI_HBM_DATA_WIDTH  = 256;
    localparam M_AXI_HBM_ADDR_WIDTH  = 33;
    localparam M_AXI_HBM_ID_WIDTH    = 6;
    localparam M_AXI_HBM_LEN_WIDTH   = 4;

    // Metadata interface info
    localparam METADATA_LEN_WIDTH = 16;
    localparam METADATA_LEN_MSB   = 15;
    localparam METADATA_LEN_LSB   = 0;
    localparam METADATA_EGRESS_PORT_WIDTH = 4;
    localparam METADATA_EGRESS_PORT_MSB   = 19;
    localparam METADATA_EGRESS_PORT_LSB   = 16;
    localparam METADATA_TAG_HEADER_WIDTH = 128;
    localparam METADATA_TAG_HEADER_MSB   = 147;
    localparam METADATA_TAG_HEADER_LSB   = 20;
    localparam METADATA_EXT_IV_WIDTH = 64;
    localparam METADATA_EXT_IV_MSB   = 211;
    localparam METADATA_EXT_IV_LSB   = 148;
    localparam METADATA_ESP_HEADER_WIDTH = 64;
    localparam METADATA_ESP_HEADER_MSB   = 275;
    localparam METADATA_ESP_HEADER_LSB   = 212;
    localparam METADATA_DST_2_WIDTH = 16;
    localparam METADATA_DST_2_MSB   = 291;
    localparam METADATA_DST_2_LSB   = 276;
    localparam METADATA_DST_1_WIDTH = 16;
    localparam METADATA_DST_1_MSB   = 307;
    localparam METADATA_DST_1_LSB   = 292;
    localparam METADATA_SRC_2_WIDTH = 16;
    localparam METADATA_SRC_2_MSB   = 323;
    localparam METADATA_SRC_2_LSB   = 308;
    localparam METADATA_SRC_1_WIDTH = 16;
    localparam METADATA_SRC_1_MSB   = 339;
    localparam METADATA_SRC_1_LSB   = 324;
    localparam METADATA_HDR_CHK_WIDTH = 16;
    localparam METADATA_HDR_CHK_MSB   = 355;
    localparam METADATA_HDR_CHK_LSB   = 340;
    localparam METADATA_PROTOCOL_WIDTH = 8;
    localparam METADATA_PROTOCOL_MSB   = 363;
    localparam METADATA_PROTOCOL_LSB   = 356;
    localparam METADATA_TTL_WIDTH = 8;
    localparam METADATA_TTL_MSB   = 371;
    localparam METADATA_TTL_LSB   = 364;
    localparam METADATA_OFFSET_WIDTH = 13;
    localparam METADATA_OFFSET_MSB   = 384;
    localparam METADATA_OFFSET_LSB   = 372;
    localparam METADATA_FLAGS_WIDTH = 3;
    localparam METADATA_FLAGS_MSB   = 387;
    localparam METADATA_FLAGS_LSB   = 385;
    localparam METADATA_ID_WIDTH = 16;
    localparam METADATA_ID_MSB   = 403;
    localparam METADATA_ID_LSB   = 388;
    localparam METADATA_LENGTH_WIDTH = 16;
    localparam METADATA_LENGTH_MSB   = 419;
    localparam METADATA_LENGTH_LSB   = 404;
    localparam METADATA_TOS_WIDTH = 8;
    localparam METADATA_TOS_MSB   = 427;
    localparam METADATA_TOS_LSB   = 420;
    localparam METADATA_HDR_LEN_WIDTH = 4;
    localparam METADATA_HDR_LEN_MSB   = 431;
    localparam METADATA_HDR_LEN_LSB   = 428;
    localparam METADATA_VERSION_WIDTH = 4;
    localparam METADATA_VERSION_MSB   = 435;
    localparam METADATA_VERSION_LSB   = 432;
    localparam METADATA_VLAN_HEADER_WIDTH = 32;
    localparam METADATA_VLAN_HEADER_MSB   = 467;
    localparam METADATA_VLAN_HEADER_LSB   = 436;
    localparam METADATA_MAC_HEADER_WIDTH = 112;
    localparam METADATA_MAC_HEADER_MSB   = 579;
    localparam METADATA_MAC_HEADER_LSB   = 468;
    localparam METADATA_IS_VLAN_WIDTH = 1;
    localparam METADATA_IS_VLAN_MSB   = 580;
    localparam METADATA_IS_VLAN_LSB   = 580;

    // User Extern interface info
    localparam USER_EXTERN_VALID_CALC_CHECKSUM     = 0;
    localparam USER_EXTERN_IN_CALC_CHECKSUM_WIDTH  = 16;
    localparam USER_EXTERN_IN_CALC_CHECKSUM_MSB    = 15;
    localparam USER_EXTERN_IN_CALC_CHECKSUM_LSB    = 0;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_9_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_9_MSB   = 15;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_9_LSB   = 0;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_8_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_8_MSB   = 31;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_8_LSB   = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_7_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_7_MSB   = 47;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_7_LSB   = 32;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_6_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_6_MSB   = 63;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_6_LSB   = 48;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_5_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_5_MSB   = 79;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_5_LSB   = 64;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_4_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_4_MSB   = 95;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_4_LSB   = 80;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_3_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_3_MSB   = 111;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_3_LSB   = 96;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_2_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_2_MSB   = 127;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_2_LSB   = 112;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_1_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_1_MSB   = 143;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_1_LSB   = 128;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_0_WIDTH = 16;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_0_MSB   = 159;
    localparam USER_EXTERN_OUT_CALC_CHECKSUM_HEADER_0_LSB   = 144;

////////////////////////////////////////////////////////////////////////////////
// Declarations
////////////////////////////////////////////////////////////////////////////////

    // Metadata top-struct
    typedef struct packed {
        logic is_vlan;
        logic [111:0] mac_header;
        logic [31:0] vlan_header;
        logic [3:0] version;
        logic [3:0] hdr_len;
        logic [7:0] tos;
        logic [15:0] length;
        logic [15:0] id;
        logic [2:0] flags;
        logic [12:0] offset;
        logic [7:0] ttl;
        logic [7:0] protocol;
        logic [15:0] hdr_chk;
        logic [15:0] src_1;
        logic [15:0] src_2;
        logic [15:0] dst_1;
        logic [15:0] dst_2;
        logic [63:0] esp_header;
        logic [63:0] ext_iv;
        logic [127:0] tag_header;
        logic [3:0] egress_port;
        logic [15:0] len;
    } USER_META_DATA_T;

    // User Extern sub-struct ipv4_header_0
    typedef struct packed {
        logic [15:0] header_0;
        logic [15:0] header_1;
        logic [15:0] header_2;
        logic [15:0] header_3;
        logic [15:0] header_4;
        logic [15:0] header_5;
        logic [15:0] header_6;
        logic [15:0] header_7;
        logic [15:0] header_8;
        logic [15:0] header_9;
    } IPV4_HEADER_0_T;


    // User Extern In top-struct
    typedef struct packed {
        logic [15:0] calc_checksum;
    } USER_EXTERN_IN_T;

    // User Extern Out top-struct
    typedef struct packed {
        IPV4_HEADER_0_T calc_checksum;
    } USER_EXTERN_OUT_T;

    // User Extern (In/Out) Valid top-struct
    typedef struct packed {
        logic calc_checksum;
    } USER_EXTERN_VALID_T;

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
            NameStringPtr : "metadata.is_vlan",
            Value         : 1
        },
        '{
            NameStringPtr : "metadata.mac_header",
            Value         : 112
        },
        '{
            NameStringPtr : "metadata.vlan_header",
            Value         : 32
        },
        '{
            NameStringPtr : "metadata.version",
            Value         : 4
        },
        '{
            NameStringPtr : "metadata.hdr_len",
            Value         : 4
        },
        '{
            NameStringPtr : "metadata.tos",
            Value         : 8
        },
        '{
            NameStringPtr : "metadata.length",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.id",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.flags",
            Value         : 3
        },
        '{
            NameStringPtr : "metadata.offset",
            Value         : 13
        },
        '{
            NameStringPtr : "metadata.ttl",
            Value         : 8
        },
        '{
            NameStringPtr : "metadata.protocol",
            Value         : 8
        },
        '{
            NameStringPtr : "metadata.hdr_chk",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.src_1",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.src_2",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.dst_1",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.dst_2",
            Value         : 16
        },
        '{
            NameStringPtr : "metadata.esp_header",
            Value         : 64
        },
        '{
            NameStringPtr : "metadata.ext_iv",
            Value         : 64
        },
        '{
            NameStringPtr : "metadata.tag_header",
            Value         : 128
        },
        '{
            NameStringPtr : "metadata.egress_port",
            Value         : 4
        },
        '{
            NameStringPtr : "metadata.len",
            Value         : 16
        }
    };

    // list of all tables defined in the design
    XilSdnetTable XilSdnetTableList[] =
    {
    };

    // Top Level SDNet Configuration
    XilSdnetConfig XilSdnetConfig_ipsec_bd_sdnet_0_3 =
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
// File created on 29 of September, 2020 @ 19:45:51
// by SDNet IP, version v2.2 revision 0
//--------------------------------------------------------------------------
