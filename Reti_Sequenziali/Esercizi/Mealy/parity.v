/*
Questo modulo rappresenta una rete di mealy per il 
calcolo della parità di una data sequenza di bit.
La parità dipende da se il numero di "1" è pari o no.
*/
//Per differenziarlo da altri, lo stato e la z li faccio con primitiva:
module parity(output z, input x, input clk);
    //due "uscite":
    wire inp,out;
    //È un automa di mealy quindi ha un registro, due "uscite":
    registro #(1) r(out,inp,1'b1,clk);

    //le uscite:
    uscite u(z,out,x);
    //Lo stato:
    stato s(inp, out,x);
    
endmodule