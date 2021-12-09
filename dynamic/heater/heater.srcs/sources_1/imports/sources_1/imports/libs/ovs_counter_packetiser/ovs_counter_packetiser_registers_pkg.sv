// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

package ovs_counter_packetiser_registers_pkg;

typedef struct packed {
    logic        enable;
    logic        stream_mode;
    logic [11:0] reserved_29_18;
    logic        counter_stall_enable;
    logic        zero_squash_enable;
    logic [6:0]  reserved_15_9;
    logic        counter_select;
    logic [7:0]  version;
} ovs_configuration_0_t;

typedef struct packed {
    logic [15:0] packet_count; // PACKETISER_PACKET_COUNT_L2
    logic [15:0] packet_size;  // PACKETISER_PACKET_SIZE_L2
} ovs_configuration_1_t;

typedef struct packed {
    logic [7:0] reserved_31_24;
    logic [23:0] collect_count; // COUNTER_INDEX_WIDTH
} ovs_configuration_2_t;

typedef struct packed {
    logic [7:0] reserved_31_24;
    logic [23:0] request_count; // COUNTER_INDEX_WIDTH
} ovs_request_count_t;

typedef struct packed {
    logic [7:0] reserved_31_24;
    logic [23:0] request_index; // COUNTER_INDEX_WIDTH
} ovs_request_index_t;

typedef struct packed {
    logic [7:0] reserved_31_24;
    logic [23:0] response_index; // COUNTER_INDEX_WIDTH
} ovs_response_index_t;

typedef struct packed {
    logic        request;
    logic [30:0] reserved_30_0;
} ovs_control_t;

typedef struct packed {
    logic         busy;
    logic [30:16] reserved_30_16;
    logic [15:0]  packet_counter; // PACKETISER_PACKET_COUNT_L2
} ovs_status_t;

typedef struct packed {
    logic        ready;
    logic [30:0] count;
} ovs_fifo_status_t;

typedef struct packed {
    logic [7:0] reserved_31_24;
    logic [11:0] ccs_lookup_rate;
    logic [1:0] increment_request_count_ct;
    logic [1:0] increment_request_count_ar;
    logic [1:0] generate_counter_ct;
    logic [1:0] generate_counter_ar;
    logic [1:0] reserved_3_2;
    logic [1:0] architecture;
} ovs_build_t;

typedef struct packed {
    logic [31:0]            fifo_read_data;
    ovs_fifo_status_t       fifo_status;
    logic [31:0]            metadata_7;
    logic [31:0]            metadata_6;
    logic [31:0]            metadata_5;
    logic [31:0]            metadata_4;
    logic [31:0]            metadata_3;
    logic [31:0]            metadata_2;
    logic [31:0]            metadata_1;
    logic [31:0]            metadata_0;
    ovs_build_t             build;
    ovs_status_t            status;
    ovs_control_t           control;
    ovs_request_index_t     request_index;
    ovs_request_count_t     request_count;
    ovs_response_index_t    response_index;
    ovs_configuration_2_t   configuration_2;
    ovs_configuration_1_t   configuration_1;
    ovs_configuration_0_t   configuration_0;
} ovs_registers_t;

const ovs_registers_t register_write_masks = '{
    fifo_read_data :  32'h00000000,
    fifo_status    :  32'h00000000,
    build :           32'h00000000,
    status :          32'h00000000,
    control :         32'h80000000,
    request_index :   32'h00FFFFFF,
    request_count :   32'h00FFFFFF,
    response_index :  32'h00000000,
    configuration_2 : 32'h00FFFFFF,
    configuration_0 : 32'hC00301FF,
    default :         32'hFFFFFFFF};

const ovs_registers_t register_read_masks = '{
    fifo_read_data :  32'hFFFFFFFF,
    fifo_status    :  32'hFFFFFFFF,
    build :           32'hFFFFFFFF,
    status :          32'h8000FFFF,
    control :         32'h00000000,
    request_index :   32'h00FFFFFF,
    request_count :   32'h00FFFFFF,
    response_index :  32'h00FFFFFF,
    configuration_2 : 32'h00FFFFFF,
    configuration_0 : 32'hC00301FF,
    default :         32'hFFFFFFFF};

endpackage
