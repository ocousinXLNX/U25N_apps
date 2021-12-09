// -----------------------------------------------------------------------------
// (c) 2019 Copyright SolarFlare Communications, Inc
// -----------------------------------------------------------------------------

package ovs_counter_master_pkg;

typedef struct packed {
    logic unsigned [47:0] byte_count;
    logic unsigned [47:0] packet_count;
    logic unsigned [31:0] index;
} ovs_count_t;

class counter_increments_c #(COUNTER_INCR_WIDTH=16);
    // Byte and packet counter increments are queued together
    rand integer increment_min_count;
    rand integer increment_max_count;
    rand integer counter_offset;
    rand integer counter_count;
    typedef struct {
        rand integer counter_index;
        rand integer byte_increment;
    } ovs_counter_increment_t;
    // Setup a queue of random size
    rand ovs_counter_increment_t increment_queue [$];
    // Create a queue for accumulations
    ovs_counter_increment_t accumulate_queue [$];
    // Constraint for queue size
    constraint queue_size_c {
        increment_queue.size()>=increment_min_count;
        increment_queue.size()<=increment_max_count;
    }
    // Constraint for the counter index
    constraint counter_index_value_c {
        foreach (increment_queue[i]) {
            increment_queue[i].counter_index >= counter_offset;
            increment_queue[i].counter_index < counter_offset+counter_count;
        }
    }
    // Constraint for the byte increment
    constraint byte_increment_value_c {
        foreach (increment_queue[i]) {
            increment_queue[i].byte_increment > 0;
            increment_queue[i].byte_increment < (2**COUNTER_INCR_WIDTH);
        }
    }
    // Function to display the counter increments
    function void display();
        $display ("Counter Increment Queue Dump");
        $display ("range = (%0d->%0d)", counter_offset, counter_offset+counter_count-1);
        $display ("increments = %0d", increment_queue.size());
        foreach (increment_queue[i]) 
            $display ("\tIncrement %0d = I: 0x%04X B:0x%04X", i,
                increment_queue[i].counter_index,
                increment_queue[i].byte_increment);
    endfunction
    // Function to get a random increment count
    function integer get_increment_count();
        return $urandom_range(1, increment_queue.size);
    endfunction
    // Function to push a given number of increments onto the accumulate queue
    function integer increment(
        integer count);
        repeat (count) begin 
            if (increment_queue.size == 0) break;
            else
                accumulate_queue.push_back(increment_queue.pop_front());
        end
        return increment_queue.size();
    endfunction
    // Function to accumulate increments and report residue
    function integer accumulate(
        ref ovs_count_t counts [$]);
        integer index;
        integer byte_accumulator;
        integer byte_accumulator_stall;
        integer packet_accumulator;
        integer packet_accumulator_stall;
        foreach (counts[i]) begin
            byte_accumulator = 0;
            byte_accumulator_stall = 0;
            packet_accumulator = 0;
            packet_accumulator_stall = 0;
            index = 0;
            $display("processing counter index %d", counts[i].index);
            while (index < accumulate_queue.size()) begin
                // Select increments according to the given offset/count range
                if (accumulate_queue[index].counter_index == counts[i].index) begin
                    $display("processing increment");
                    // Accumulate up to but not exceeding the given count values
                    if( ((byte_accumulator+accumulate_queue[index].byte_increment) <=
                        counts[i].byte_count) && (byte_accumulator_stall == 0) ) begin
                        byte_accumulator += accumulate_queue[index].byte_increment;
                        // Zero out the increment once accumulated
                        $display("byte count reconciled");
                        accumulate_queue[index].byte_increment = 0;
                    end
                    else begin
                        // If the increment exceeds the expected accumulation then 
                        // stall it, leave as residue for the next collection.
                        $display("byte accumulator stalled");
                        byte_accumulator_stall = 1;
                    end
                    if( ((packet_accumulator+1) <=
                        counts[i].packet_count) && (packet_accumulator_stall == 0) ) begin
                        packet_accumulator += 1;
                        $display("packet count reconciled");
                    end
                    else begin
                        // If the increment exceeds the expected accumulation then 
                        // stall it, leave as residue for the next collection.
                        $display("packet accumulator stalled");
                        packet_accumulator_stall = 1;
                    end
                    // If both packet and byte counters have been accumulated then delete
                    // the entry
                    if( accumulate_queue[index].byte_increment == 0 ) begin
                        $display("increment deleted");
                        accumulate_queue.delete(index);
                    end
                    else begin
                        // Leave as residue once accumulated to the given count
                        $display("residue");
                        index += 1;
                    end
                end
                else begin
                    // Move onto the next one if no match
                    index += 1;
                end
            end
        end
        // Consume the input queue.
        counts = {};
        // Return the residue
        return accumulate_queue.size();
    endfunction
endclass

endpackage
