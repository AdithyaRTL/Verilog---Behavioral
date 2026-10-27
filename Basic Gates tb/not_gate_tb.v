`timescale 1ns / 1ps

module not_gate_tb;

    // Testbench stimuli (Inputs are reg, outputs are wire)
    reg  a;
    wire b;

    // Instantiate the Unit Under Test (UUT)
    not_gate uut (
        .a(a),
        .b(b)
    );

    initial begin
        // Waveform generation for GTKWave
        $dumpfile("not_gate_tb.vcd");
        $dumpvars(0, not_gate_tb);

        // Terminal printout monitor
        $monitor("Time = %0t | a = %b -> b = %b", $time, a, b);

        // Exhaustive test: both logic states (0 and 1)
        a = 0; #10;
        a = 1; #10;

        $finish;
    end

endmodule
