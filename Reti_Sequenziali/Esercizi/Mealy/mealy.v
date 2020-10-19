module Mealy(output [0:1]z, input x, input clk);
    wire [0:1]out;
    wire [0:1]inp;
    //Un automa di mealy ha un registro, una r.c. per lo stato e una per l'ingresso:
    //registro da 2 bit
    registro #(2) r(out,inp, 1'b1, clk);
    //rete per le uscite
    Z exits(z,x,out);
    //rete per lo stato succ.
    S states(inp,x,out);
endmodule