`timescale 1ns / 1ps
module tb_barrelShifter;

    reg [7:0] Ip;
    reg [2:0] shift_mag;
    wire [7:0] Op;

    // Instantiate the barrelShifter
    barrelShifter uut (
        .Ip(Ip),
        .Op(Op),
        .shift_mag(shift_mag)
    );

    initial begin
        // Test cases
        Ip = 8'b11010101; shift_mag = 3'b000; #10;  // No shift
        Ip = 8'b11010101; shift_mag = 3'b001; #10;  // Shift by 1
        Ip = 8'b11010101; shift_mag = 3'b010; #10;  // Shift by 2
        Ip = 8'b11010101; shift_mag = 3'b100; #10;  // Shift by 4
        
        $display("Test complete");
        $finish;
    end

endmodule

