module not_gate (
  input wire a,
  output reg c
);
  always@(a)
    c = ~a;
endmodule
