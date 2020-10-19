module reg1(output z, input x, input en, input clk);
    //registro di uscita
    reg r;

    //Inizializzo a 0 il registro da 1 bit
    initial
        r=0;
    
    //Ora aggiorno il registro solo quando il ciclo di clock va alto e ho l'enabled a true
    always @(posedge clk)
        begin
            if(en==1)
            r=x;
        end

    //l'uscita ha sempre questo valore
    assign 
        z=r;
endmodule