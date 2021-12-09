// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

package ovs_counter_types_pkg;

// Enumerations for the architecture type
localparam ARCHITECTURE_SNIC = 0;
localparam ARCHITECTURE_HNIC = 1;

// Enumerations for counter generators
localparam GENERATE_COUNTER_NONE = 0;
localparam GENERATE_COUNTER_SMALL = 1;
localparam GENERATE_COUNTER_CCS = 2;

// CCS counter type enumerations
localparam CCS_COUNTER_TYPE_AR = 0;
localparam CCS_COUNTER_TYPE_CT = 1;

// Collection range for Xilinx IP core
localparam CORE_COLLECT_RANGE_L2 = 7;

// Range of counters as definied within the Xilinx IP core
localparam CORE_COUNTER_RANGE_L2 = 16;

// Width of counters as definied within the Xilinx IP core
localparam CORE_COUNTER_WIDTH = 64;

// Width of increment bus on counter increment interface
localparam COUNTER_INCR_WIDTH = 16;

// Index width for all counter arithmetic
localparam COUNTER_INDEX_WIDTH = 24;

// Trimmed width for packetisation
localparam PACKETISER_COUNTER_WIDTH = 48;

// Maximum number of packets in the sequence
localparam PACKETISER_PACKET_COUNT_L2 = 16;

// Maximum number of counters in a packet (limited by 9K byte range of jumbo packet)
// $clog2((9*1024)/((32+48+48)/8))=10
localparam PACKETISER_PACKET_SIZE_L2 =
    $clog2(9*1024/
    ((32+(2*PACKETISER_COUNTER_WIDTH))/8));

// For the cut down core, enable access to its AXIL register (generates internal interconnect)
localparam AXIL_CORE_ACCESS = 1;

// Ratio used to upsize the packetiser stream.
localparam AXIS_UPSIZER_RATIO = 4;

typedef struct packed {
    logic [COUNTER_INCR_WIDTH-1:0] byte_increment;
    logic [7:0] pad;
    logic [COUNTER_INDEX_WIDTH-1:0] counter_index;
} ovs_increment_request_t;

localparam integer AXIS_INCREMENT_REQUEST_DATA_COUNT = ($bits(ovs_increment_request_t)+8-1)/8;

typedef struct packed {
    logic [7:0] collect_count;
    logic [7:0] pad;
    logic [COUNTER_INDEX_WIDTH-1:0] counter_index;
} ovs_collect_request_t;

localparam integer AXIS_COLLECT_REQUEST_DATA_COUNT = ($bits(ovs_collect_request_t)+8-1)/8;

typedef struct packed {
    logic [CORE_COUNTER_WIDTH-1:0] packet_count;
    logic [CORE_COUNTER_WIDTH-1:0] byte_count;
} ovs_collect_response_t;

localparam integer AXIS_COLLECT_RESPONSE_DATA_COUNT = ($bits(ovs_collect_response_t)+8-1)/8;
localparam integer AXIS_PACKETISER_DATA_COUNT = AXIS_COLLECT_RESPONSE_DATA_COUNT*AXIS_UPSIZER_RATIO;

typedef struct packed {
    logic [CORE_COUNTER_WIDTH-1:0] packet_count;
    logic [CORE_COUNTER_WIDTH-1:0] byte_count;
    logic [7:0] pad;
    logic [COUNTER_INDEX_WIDTH-1:0] counter_index;
    logic [7:0] opcode;
} ovs_core_miss_request_ar_t;

localparam AXIS_CORE_MISS_REQUEST_AR_DATA_COUNT = ($bits(ovs_core_miss_request_ar_t)+8-1)/8;

typedef struct packed {
    logic [CORE_COUNTER_WIDTH-1:0] packet_count;
    logic [CORE_COUNTER_WIDTH-1:0] byte_count;
} ovs_core_miss_response_ar_t;

localparam AXIS_CORE_MISS_RESPONSE_AR_DATA_COUNT = ($bits(ovs_core_miss_response_ar_t)+8-1)/8;

typedef struct packed {
    logic [7:0] pad;
    logic [COUNTER_INDEX_WIDTH-1:0] counter_index;
    logic [7:0] opcode;
} ovs_core_miss_request_ct_t;

localparam AXIS_CORE_MISS_REQUEST_CT_DATA_COUNT = ($bits(ovs_core_miss_request_ct_t)+8-1)/8;

typedef struct packed {
    logic [CORE_COUNTER_WIDTH-1:0] packet_count;
    logic [CORE_COUNTER_WIDTH-1:0] byte_count;
} ovs_core_miss_response_ct_t;

localparam AXIS_CORE_MISS_RESPONSE_CT_DATA_COUNT = ($bits(ovs_core_miss_response_ct_t)+8-1)/8;

endpackage
