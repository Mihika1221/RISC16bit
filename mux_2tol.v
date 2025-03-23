module mux_2to1(
    input a,        // Input 1
    input b,        // Input 2
    output y,       // Output
    input sel       // Select line
);
    assign y = sel ? b : a;  // MUX logic
endmodule