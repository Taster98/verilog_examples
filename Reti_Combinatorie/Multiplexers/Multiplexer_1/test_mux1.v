module test_mux_1();
    //variabili
    reg x,y,ctrl;
    wire z;
    mux1 myMux(z,ctrl,x,y);

    //main
    initial
        begin
            $dumpfile("test_mux1.vcd");
            $dumpvars;
            //inizialmente dovrà darmi 0
            ctrl=0;
            x=0;
            y=0;
            //ora metto x a 1 e dovrebbe darmi 1:
            #2;
            x=1;
            //se y la metto a 1, l'uscita dovrebbe rimanere 1
            #2;
            y=1;
            //ora setto x a 0
            #2;
            x=0;
            //ora setto ctrl a 1 con y=1:
            #2;
            ctrl=1;
            //rimetto a zero tutto:
            #2;
            ctrl=0;
            x=0;
            y=0;
            
            #3;
            $finish;
        end 
endmodule