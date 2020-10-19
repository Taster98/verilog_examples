module test_banco();
    //Qui mi definisco quanto voglio far valere M e N
    parameter M = 8;
    parameter N = 4;
    //Quindi ho parole da 8 bit in memoria di 4 parole.

    //Solita regola, tanti reg quanti sono gli ingressi e tanti
    //wire quante sono le uscite:
    reg[M-1:0] inputMem;
    reg[N-1:0] addressMem1,addressMem2,addressMem3;
    reg en,clk;
    wire[M-1:0] outputMem1,outputMem2;

    //Creo il mio modulo di banco di registri con i parametri cambiati con 
    //i miei attuali M(8) e N(4):
    banco #(M,N) MEM(outputMem1,outputMem2,inputMem,addressMem1,addressMem2,addressMem3,en,clk);

    //Faccio oscillare il ciclo di clock:
    always
        begin
            #1 clk = ~clk;
        end
    
    //main:
    initial
        begin
            $dumpfile("test_banco.vcd");
            $dumpvars;

            //inizialmente clock e enabled li setto a 0 (ed anche gli indirizzi):
            clk=0;
            en=0;
            addressMem1=0;
            addressMem2=0;
            addressMem3=0;
            //aspetto un un'unità di tempo e scrivo 77 in posizione 7:
            #1
            //abilito la scrittura
            en=1;
            //imposto l'indirizzo alla cella 7:
            addressMem3 = 7;
            addressMem1 = addressMem3;
            //dico che voglio scriverci 77:
            inputMem = 77;

            //dopo 2 unità di tempo voglio solo leggere:
            #2
            en=0;
            //dopo 2 unità mi viene in mente che voglio scrivere 111 in cella 1:
            #2
            en=1;
            addressMem3=1;
            addressMem1=addressMem3;
            inputMem=111;
            //dopo 2 unità voglio leggere che avevo scritto in 7:
            #2
            en=0;
            addressMem1=7;
            //dopo 2 unità leggo cosa avevo scritto in 1:
            #2
            en=0;
            addressMem1=1;
            //dopo 1 unità voglio leggere la posizione 9 (che dovrebbe esser 0):
            #1
            en=0;
            addressMem2=9;
            //allora dentro 9 ci voglio scrivere 17:
            #2
            en=1;
            inputMem=17;
            addressMem3=9;
            //Fine test 
            #5 $finish;
        end
endmodule