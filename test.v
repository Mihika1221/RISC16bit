module barrelShifter_tb;
// Inputs
reg [7:0] Ip;
reg [2:0] shift_mag;

// Outputs
wire [7:0] Op;

×
Ezoic
// Instantiate the Unit Under Test (UUT)
barrelShifter uut (
.Ip(Ip),
.Op(Op),
.shift_mag(shift_mag)
);

initial begin
// Initialize Inputs
Ip = 8?d0;
shift_mag = 3?d0;

// Wait 100 ns for global reset to finish
#100;

×
Ezoic
// Add stimulus here
Ip = 8?d16;
shift_mag = 3?d2;
#20;

Ip = 8?d4;
shift_mag = 3?d2;
end
endmodule
