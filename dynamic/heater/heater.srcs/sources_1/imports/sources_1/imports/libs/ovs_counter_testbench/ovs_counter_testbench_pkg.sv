// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

package ovs_counter_testbench_pkg;

import axis_types_pkg::*;
import ovs_counter_types_pkg::*;
import ovs_counter_master_pkg::ovs_count_t;

// -----------------------------------------------------------------------------
// Test Bench Parameters
// -----------------------------------------------------------------------------

localparam COUNTER_COUNT = 65536;

// -----------------------------------------------------------------------------
// AXIS Stream Functions
// -----------------------------------------------------------------------------

function integer core_axis_extract_counts(
    integer collect_index,
    integer collect_count,
    ref axis_types_pkg::axis_data_c #(AXIS_COLLECT_RESPONSE_DATA_COUNT*8, 1)::axis_data_t axis_data[$],
    ref ovs_count_t counts [$]);
    ovs_count_t count;
    // Check that the number of extracted counts matches what is expected
    assert (axis_data.size == collect_count) else $error("Unexpected packet size");
    // Unpack AXIS packet payload data into the count queue
    foreach (axis_data[i]) begin
        // Zero squash
        if( axis_data[i] != {AXIS_COLLECT_RESPONSE_DATA_COUNT*8{1'b0}} ) begin
            count.index = collect_index+i;
            count.packet_count = axis_data[i].data[(2*CORE_COUNTER_WIDTH)-1:CORE_COUNTER_WIDTH];
            count.byte_count = axis_data[i].data[CORE_COUNTER_WIDTH-1:0];
            counts.push_back(count);
        end
    end
    // Consume the input queue.
    axis_data = {};
endfunction

function integer axis_downsize(
    ref axis_types_pkg::axis_data_c #(
        AXIS_COLLECT_RESPONSE_DATA_COUNT*8*AXIS_UPSIZER_RATIO,
        1*AXIS_UPSIZER_RATIO)::axis_data_t axis_wide_data[$],
    ref axis_types_pkg::axis_data_c #(
        AXIS_COLLECT_RESPONSE_DATA_COUNT*8,
        1)::axis_data_t axis_data[$]);
    foreach (axis_wide_data[i]) begin
        for (integer j=0; j< AXIS_UPSIZER_RATIO; j=j+1) begin
            axis_types_pkg::axis_data_c #(
                AXIS_COLLECT_RESPONSE_DATA_COUNT*8, 1)::axis_data_t axis_word;
            axis_word.data = axis_wide_data[i].data[j*AXIS_COLLECT_RESPONSE_DATA_COUNT*8+:AXIS_COLLECT_RESPONSE_DATA_COUNT*8];
            axis_word.keep = axis_wide_data[i].keep[j*(AXIS_COLLECT_RESPONSE_DATA_COUNT*8/8)+:(AXIS_COLLECT_RESPONSE_DATA_COUNT*8/8)];
            axis_word.user = axis_wide_data[i].user[j*1+:1];
            if(axis_word.keep != {AXIS_COLLECT_RESPONSE_DATA_COUNT*8/8{1'b0}}) axis_data.push_back(axis_word);
        end
    end
    // Consume the input queue.
    axis_wide_data = {};
endfunction

function integer packetiser_axis_extract_counts(
    integer collect_index,
    integer collect_count,
    ref axis_types_pkg::axis_data_c #(AXIS_COLLECT_RESPONSE_DATA_COUNT*8, 1)::axis_data_t axis_data[$],
    ref ovs_count_t counts [$]);
    integer counter_index;
    // Unpack AXIS packet payload data into the count queue
    foreach (axis_data[i]) begin
        if (i>0) begin
            // Extract the payload word
            counts.push_back(axis_data[i].data);
            // Check that the counter index is in range
            counter_index = counts[counts.size()-1].index;
            assert ((counter_index >= collect_index) &&
                (counter_index < collect_index+collect_count)) else
                    $error("Unexpected counter index");
        end
    end
    // Check that the number of extracted counts match the header
    assert (axis_data[0].data[(8*8)-1:8*6] == counts.size()) else $error("Unexpected packet size");
    // Consume the input queue.
    axis_data = {};
endfunction

function integer dump_counts(
    ref ovs_count_t counts [$]);
    foreach (counts[i])
        $display("Counter 0x%X: P:0x%X, B:0x%X",
            counts[i].index, counts[i].packet_count, counts[i].byte_count);
endfunction

endpackage
