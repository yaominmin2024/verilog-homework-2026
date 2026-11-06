module top_tb;
wire clk;
reg en;
reg clr;
wire [9:0] q;

clk_gen u_clk(
    .clk(clk)
);

CD4017 u_cd4017(
    .clk(clk),
    .en(en),
    .clr(clr),
    .q(q)
);

initial begin
    clr = 1'b1;
    en = 1'b0;
    #20;
    clr = 1'b0;
    en = 1'b1;
    #400;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,top_tb);
end

endmodule
