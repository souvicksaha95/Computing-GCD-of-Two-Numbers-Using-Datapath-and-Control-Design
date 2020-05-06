module GCD_Datapath (gt, lt, eq, ldA, ldB, sel1, sel2, sel_in, data_in, clk);
  input ldA, ldB, sel1, sel2, sel_in, clk;
  input [15:0] data_in;
  output gt, lt, eq;
  wire [15:0] X, Y, Aout, Bout, Subout, Bus;
  
  PIPO A (Aout, Bus, ldA, clk);
  PIPO B (Bout, Bus, ldB, clk);
  MUX MUX_in1 (X, Aout, Bout, sel1);
  MUX MUX_in2 (Y, Aout, Bout, sel2);
  MUX MUX_load (Bus, Subout, data_in, sel_in);
  SUB SB (Subout, X, Y);
  COMPARE COMP (lt, gt, eq, Aout, Bout);
endmodule
