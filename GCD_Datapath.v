module GCD_Datapath (gt, lt, eq, ldA, ldB, sel1, sel2, sel_in, data_in, clk);
  input ldA, ldB, sel1, sel2, sel_in, clk;
  input [15:0] data_in;
  output gt, lt, eq;
  wire [15:0] x, y, Aout, Bout, Subout, Bus;
  
  PIPO A (Aout, Bus, ldA, clk);
  PIPO B (Bout, Bus, ldB, clk);
