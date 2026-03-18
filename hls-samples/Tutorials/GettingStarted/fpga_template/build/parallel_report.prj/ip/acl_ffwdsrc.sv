//// (c) 1992-2024 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 

//
// acl_ffwdsrc
//
// This module is a 'fast forward source'.  It is used by the HLD compiler as the source to drive an acl_ffwddst
// (fast forward destination) IP. 
// The purpose of this pair of IP blocks is to allow data to be forwarded later in the schedule without requiring 
// registers to delay the data, and can only be used in circumstances where the compiler can guarantee this is safe.
// When the predicate_in is high while valid_in is high, we can continue to emit high valid_out, but we do not
// change the source_put from its old value. This is useful for cases where a ffwd src lies in a
// conditional branch, and should only consume new information on some of the iterations.

`default_nettype none

module acl_ffwdsrc #(
    parameter WIDTH              = 1,           // width of the source_in/source_out busses, minimum 1
    parameter STALL_VALID        = 1,            // only support stall_valid protocol. This must be 1.
    parameter  bit ASYNC_RESET,
    parameter  bit SYNCHRONIZE_RESET
) (
    input  wire                 clock,          // all inputs and outputs are synchronous with this clock
    input  wire                 resetn,
    input  wire  [WIDTH-1:0]    source_in,
    output logic [WIDTH-1:0]    source_out,
    output logic                valid_out,
    input  wire                 predicate_in,   // predicate_in means that the data that is stored in the reg is valid, but the source_in data is not and should not update the register
    input  wire                 valid_in,
    input  wire                 stall_in,
    output wire                 stall_out
);



    ///////////////////////////////////////
    // Parameter checking
    //
    // Generate an error if any illegal parameter settings or combinations are used
    ///////////////////////////////////////
    initial /* synthesis enable_verilog_initial_construct */
    begin
        if (WIDTH<=0) 
            $fatal(1, "Illegal parameterization: expecting WIDTH > 0");
        if (STALL_VALID != 1)
            $fatal(1, "Ffwdsrc only supports the stall/valid protocol: expecting STALL_VALID = 1");
    end

    /////////////
    //  Reset 
    logic aclrn, sclrn, resetn_synchronized;
    acl_reset_handler #(
        .ASYNC_RESET            (ASYNC_RESET),
        .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
        .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
        .PIPE_DEPTH             (1),
        .NUM_COPIES             (1) 
    ) acl_reset_handler_inst (
        .clk                    (clock),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (resetn_synchronized),
        .o_sclrn                (sclrn)
    );

    always_ff @(posedge clock or negedge aclrn) begin
        if (~aclrn) begin
            valid_out <= '0;
        end else begin
            if (valid_in & ~stall_out) begin
                if (~predicate_in) begin
                    source_out <= source_in;
                end
                valid_out <= '1;
            end else if (~stall_in) begin
                valid_out <= '0;
            end
            if (~sclrn) begin
                valid_out <= '0;
            end
        end
    end
    assign stall_out = valid_out & stall_in;
endmodule

`default_nettype wire
