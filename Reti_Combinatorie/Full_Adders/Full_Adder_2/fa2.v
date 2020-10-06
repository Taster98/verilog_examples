module fa_2(output [1:0]somma, output rip_fin, input rip_in,input [1:0]x, input [1:0]y);
    //creo un output intermedio che sarà il mio riporto del primo full adder
    wire int_rip;
    //Ho 2 numeri da due bit, quindi semplicemente richiamo 2 volte 2 moduli da 1 
    //costruiti precedentemente e li uso:
    fa_1 bit0(somma[0],int_rip,rip_in,x[0],y[0]);
    fa_1 bit1(somma[1],rip_fin,int_rip,x[1],y[1]);
endmodule