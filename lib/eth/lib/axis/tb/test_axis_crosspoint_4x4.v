/*

Copyright (c) 2014-2016 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`timescale 1ns / 1ps

/*
 * Testbench for axis_crosspoint_4x4
 */
module test_axis_crosspoint_4x4;

// Parameters
parameter DATA_WIDTH = 8;

// Inputs
reg clk = 0;
reg rst = 0;
reg [7:0] current_test = 0;

reg [DATA_WIDTH-1:0] input_0_axis_tdata = 0;
reg input_0_axis_tvalid = 0;
reg input_0_axis_tlast = 0;
reg input_0_axis_tuser = 0;
reg [DATA_WIDTH-1:0] input_1_axis_tdata = 0;
reg input_1_axis_tvalid = 0;
reg input_1_axis_tlast = 0;
reg input_1_axis_tuser = 0;
reg [DATA_WIDTH-1:0] input_2_axis_tdata = 0;
reg input_2_axis_tvalid = 0;
reg input_2_axis_tlast = 0;
reg input_2_axis_tuser = 0;
reg [DATA_WIDTH-1:0] input_3_axis_tdata = 0;
reg input_3_axis_tvalid = 0;
reg input_3_axis_tlast = 0;
reg input_3_axis_tuser = 0;

reg [1:0] output_0_select = 0;
reg [1:0] output_1_select = 0;
reg [1:0] output_2_select = 0;
reg [1:0] output_3_select = 0;

// Outputs
wire [DATA_WIDTH-1:0] output_0_axis_tdata;
wire output_0_axis_tvalid;
wire output_0_axis_tlast;
wire output_0_axis_tuser;
wire [DATA_WIDTH-1:0] output_1_axis_tdata;
wire output_1_axis_tvalid;
wire output_1_axis_tlast;
wire output_1_axis_tuser;
wire [DATA_WIDTH-1:0] output_2_axis_tdata;
wire output_2_axis_tvalid;
wire output_2_axis_tlast;
wire output_2_axis_tuser;
wire [DATA_WIDTH-1:0] output_3_axis_tdata;
wire output_3_axis_tvalid;
wire output_3_axis_tlast;
wire output_3_axis_tuser;

initial begin
    // myhdl integration
    $from_myhdl(
        clk,
        rst,
        current_test,
        input_0_axis_tdata,
        input_0_axis_tvalid,
        input_0_axis_tlast,
        input_0_axis_tuser,
        input_1_axis_tdata,
        input_1_axis_tvalid,
        input_1_axis_tlast,
        input_1_axis_tuser,
        input_2_axis_tdata,
        input_2_axis_tvalid,
        input_2_axis_tlast,
        input_2_axis_tuser,
        input_3_axis_tdata,
        input_3_axis_tvalid,
        input_3_axis_tlast,
        input_3_axis_tuser,
        output_0_select,
        output_1_select,
        output_2_select,
        output_3_select
    );
    $to_myhdl(
        output_0_axis_tdata,
        output_0_axis_tvalid,
        output_0_axis_tlast,
        output_0_axis_tuser,
        output_1_axis_tdata,
        output_1_axis_tvalid,
        output_1_axis_tlast,
        output_1_axis_tuser,
        output_2_axis_tdata,
        output_2_axis_tvalid,
        output_2_axis_tlast,
        output_2_axis_tuser,
        output_3_axis_tdata,
        output_3_axis_tvalid,
        output_3_axis_tlast,
        output_3_axis_tuser
    );

    // dump file
    $dumpfile("test_axis_crosspoint_4x4.lxt");
    $dumpvars(0, test_axis_crosspoint_4x4);
end

axis_crosspoint_4x4 #(
    .DATA_WIDTH(DATA_WIDTH)
)
UUT (
    .clk(clk),
    .rst(rst),
    // AXI inputs
    .input_0_axis_tdata(input_0_axis_tdata),
    .input_0_axis_tvalid(input_0_axis_tvalid),
    .input_0_axis_tlast(input_0_axis_tlast),
    .input_0_axis_tuser(input_0_axis_tuser),
    .input_1_axis_tdata(input_1_axis_tdata),
    .input_1_axis_tvalid(input_1_axis_tvalid),
    .input_1_axis_tlast(input_1_axis_tlast),
    .input_1_axis_tuser(input_1_axis_tuser),
    .input_2_axis_tdata(input_2_axis_tdata),
    .input_2_axis_tvalid(input_2_axis_tvalid),
    .input_2_axis_tlast(input_2_axis_tlast),
    .input_2_axis_tuser(input_2_axis_tuser),
    .input_3_axis_tdata(input_3_axis_tdata),
    .input_3_axis_tvalid(input_3_axis_tvalid),
    .input_3_axis_tlast(input_3_axis_tlast),
    .input_3_axis_tuser(input_3_axis_tuser),
    // AXI outputs
    .output_0_axis_tdata(output_0_axis_tdata),
    .output_0_axis_tvalid(output_0_axis_tvalid),
    .output_0_axis_tlast(output_0_axis_tlast),
    .output_0_axis_tuser(output_0_axis_tuser),
    .output_1_axis_tdata(output_1_axis_tdata),
    .output_1_axis_tvalid(output_1_axis_tvalid),
    .output_1_axis_tlast(output_1_axis_tlast),
    .output_1_axis_tuser(output_1_axis_tuser),
    .output_2_axis_tdata(output_2_axis_tdata),
    .output_2_axis_tvalid(output_2_axis_tvalid),
    .output_2_axis_tlast(output_2_axis_tlast),
    .output_2_axis_tuser(output_2_axis_tuser),
    .output_3_axis_tdata(output_3_axis_tdata),
    .output_3_axis_tvalid(output_3_axis_tvalid),
    .output_3_axis_tlast(output_3_axis_tlast),
    .output_3_axis_tuser(output_3_axis_tuser),
    // Control
    .output_0_select(output_0_select),
    .output_1_select(output_1_select),
    .output_2_select(output_2_select),
    .output_3_select(output_3_select)
);

endmodule
