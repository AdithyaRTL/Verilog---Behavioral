module and_gate (
  input wire a,b,
  output reg c
);
  always@(a,b)
    c = a&b;
endmodule
