//Il fulladder da 1 bit possiamo costruirlo come un modulo con 2 primitive:
//Una primitiva per la somma effettiva, e una per il riporto:

//primitiva numero 1: somma
primitive fa_somma(output s, input rip_in, input x, input y);
    table
        0 0 0 : 0;
        0 0 1 : 1;
        0 1 0 : 1;
        0 1 1 : 0;
        1 0 0 : 1;
        1 0 1 : 0;
        1 1 0 : 0;
        1 1 1 : 1;
    endtable
endprimitive

//primitiva numero 2: riporto
primitive fa_riporto(output rip_fin, input rip_in, input x, input y);
    table
        0 0 0 : 0;
        0 0 1 : 0;
        0 1 0 : 0;
        0 1 1 : 1;
        1 0 0 : 0;
        1 0 1 : 1;
        1 1 0 : 1;
        1 1 1 : 1;
    endtable
endprimitive

//modulo che compone le due primitive: fa_1
module fa_1(output somma, output riporto_finale, input riporto_iniziale, input x, input y);
    fa_somma myFaSomma(somma,riporto_iniziale,x,y);
    fa_riporto myFaRiporto(riporto_finale,riporto_iniziale,x,y);
endmodule