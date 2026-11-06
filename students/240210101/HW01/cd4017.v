module CD4017(clk, en, clr, q);
input clk, en, clr;
output [9:0] q;
reg[3:0] count;
  clk_gen u_clk(clk);
always@(posedge clk)
begin
    count <= count + 1;
end
endmodule
