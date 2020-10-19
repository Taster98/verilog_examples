module enabled(output q, output notq, input clk, input en, input d);
    wire newclk;
    //Alla fine è un semplice and logico tra il clock e l'enabled:
    //Se il clock è alto E ho abilitato l'enabled, allora
    //chiamo il mio componente d-latch.
    assign
        newclk = clk && en;
    dlatch Dlatch(q,notq,d,newclk);
endmodule