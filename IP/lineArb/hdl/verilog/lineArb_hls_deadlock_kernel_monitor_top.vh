
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [7:0] axis_block_sigs;
wire [0:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~in_0_TDATA_blk_n;
assign axis_block_sigs[1] = ~in_1_TDATA_blk_n;
assign axis_block_sigs[2] = ~in_2_TDATA_blk_n;
assign axis_block_sigs[3] = ~in_3_TDATA_blk_n;
assign axis_block_sigs[4] = ~out_0_TDATA_blk_n;
assign axis_block_sigs[5] = ~out_1_TDATA_blk_n;
assign axis_block_sigs[6] = ~out_2_TDATA_blk_n;
assign axis_block_sigs[7] = ~out_3_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;

lineArb_hls_deadlock_idx0_monitor lineArb_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

