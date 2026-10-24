`timescale 1ns / 1ps

module or_gate_tb;

    // Testbench stimuli (Inputs are reg, outputs are wire)
    reg  a;
    reg  b;
    wire c;

    // Instantiate the Unit Under Test (UUT)
    or_gate uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        // Waveform generation for GTKWave
        $dumpfile("or_gate_tb.vcd");
        $dumpvars(0, or_gate_tb);

        // Terminal printout
        $monitor("Time = %0t | a = %b, b = %b -> c = %b", $time, a, b, c);

        // Exhaustive test: all 4 truth table states
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
