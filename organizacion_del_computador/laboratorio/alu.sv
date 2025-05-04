`timescale 1ns / 1ps


module alu(
    input a_in_0,
    input a_in_1,
    input a_in_2,
    input a_in_3,
    input b_in_0,
    input b_in_1,
    input b_in_2,
    input b_in_3,
    input alu_op_0,
    input alu_op_1,
    input alu_op_2,
    output logic alu_result_0,
    output logic alu_result_1,
    output logic alu_result_2,
    output logic alu_result_3,
    output logic zero_flag,
    output logic carry_flag
    );
    
    
    
    //------------------------- AND (000) -------------------------
    logic and_0;
    logic and_1;
    logic and_2;
    logic and_3;
    
    and_gate and_ab0_inst(
        .a (a_in_0),
        .b (b_in_0),
        .y (and_0)
    );
        and_gate and_ab1_inst(
        .a (a_in_1),
        .b (b_in_1),
        .y (and_1)
    );
        and_gate and_ab2_inst(
        .a (a_in_2),
        .b (b_in_2),
        .y (and_2)
    );
        and_gate and_ab3_inst(
        .a (a_in_3),
        .b (b_in_3),
        .y (and_3)
    );
    
    //------------------------- OR  (001) -------------------------
    logic or_0;
    logic or_1;
    logic or_2;
    logic or_3;
    
    or_gate or_ab0_inst(
        .a (a_in_0),
        .b (b_in_0),
        .y (or_0)
    );
    
        or_gate or_ab1_inst(
        .a (a_in_1),
        .b (b_in_1),
        .y (or_1)
    );
        or_gate or_ab2_inst(
        .a (a_in_2),
        .b (b_in_2),
        .y (or_2)
    );
        or_gate or_ab3_inst(
        .a (a_in_3),
        .b (b_in_3),
        .y (or_3)
    );
    
    //------------------------- ADD (010) -------------------------
    
    logic sum_0;
    logic sum_1;
    logic sum_2;
    logic sum_3;
    
    logic carry_0;
    logic carry_1;
    logic carry_2;
    logic carry_3;
    
    adder_1bit adder_0_inst(
       .a (a_in_0),
       .b (b_in_0),
       .carry_in (1'b0),
       .sum (sum_0),
       .carry_out (carry_0)
    );
    adder_1bit adder_1_inst(
       .a (a_in_1),
       .b (b_in_1),
       .carry_in (carry_0),
       .sum (sum_1),
       .carry_out (carry_1)
    );
    adder_1bit adder_2_inst(
       .a (a_in_2),
       .b (b_in_2),
       .carry_in (carry_1),
       .sum (sum_2),
       .carry_out (carry_2)
    );
    adder_1bit adder_3_inst(
       .a (a_in_3),
       .b (b_in_3),
       .carry_in (carry_2),
       .sum (sum_3),
       .carry_out (carry_3)
    );
    //------------------------- SUB (110) -------------------------
    
    //------------------------- PIB (111) -------------------------
    
    
    //---------------------------- MUX ----------------------------
    
   always_comb begin
         case({alu_op_2, alu_op_1,alu_op_0})
              3'b000: begin
                      alu_result_0 = and_0;
                      alu_result_1 = and_1;
                      alu_result_2 = and_2;
                      alu_result_3 = and_3;
                      carry_flag = 1'b0;
              end
              3'b001: begin
                      alu_result_0 = or_0;
                      alu_result_1 = or_1;
                      alu_result_2 = or_2;
                      alu_result_3 = or_3;
                      carry_flag = 1'b0;
              end
              3'b010: begin
                      alu_result_0 = sum_0;
                      alu_result_1 = sum_1;
                      alu_result_2 = sum_2;
                      alu_result_3 = sum_3;
                      carry_flag = carry_3;
              end
              3'b111: begin
                      alu_result_0 = b_in_0;
                      alu_result_1 = b_in_1;
                      alu_result_2 = b_in_2;
                      alu_result_3 = b_in_3;
                      carry_flag = 1'b0;
              end
              
              default: begin
                      alu_result_0 = 1'b0;
                      alu_result_1 = 1'b0;
                      alu_result_2 = 1'b0;
                      alu_result_3 = 1'b0;
                      carry_flag = 1'b0;
              end
    endcase
end    
    //--------------------------- FLAGS ---------------------------
    assign zero_flag = ~(alu_result_0 | alu_result_1 | alu_result_2 | alu_result_3);
    
endmodule
