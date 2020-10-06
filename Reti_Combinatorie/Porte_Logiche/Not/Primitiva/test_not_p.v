module test_not_p();
    //un registro per ogni input
    reg x;
    //un filo per ogni uscita
    wire z;
    //istanzio il modulo not_p
    not_p myNotP(z,x);

    //comportamento "main"
    initial
        begin
            //voglio che i cambiamenti vengano "stampati" sul file "test_not_p.vcd"
            $dumpfile("test_not_p.vcd");
            //voglio vedere tutte le variabili
            $dumpvars;

            //faccio un test: all'inizio x sarà 0 e mi aspetto un uno:
            x = 0;
            //attendo poi 2 unità di tempo e cambio il valore di x
            #2 
                x=1;
            #2
                x=0;
            #3
                $finish;
        end
endmodule

/*
    Ora per testarlo, devo:
    //compila
    iverilog nomeFile1.v ... nomeFileN.v
    //Ciò creerà un file "a.out"
    //Se vuoi cambiare nome all'eseguibile:
    iverilog nomeFile1.v ... nomeFileN.v -o nomeOutput.out
    Poi
    ./nomeOutput.out
    //questo scriverà nel file .vcd l'output, e per visualizzarlo:
    gtkwave nomeFile.vcd
*/