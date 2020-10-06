module test_and_p();
    //variabili
    reg x,y;
    wire z;
    and_p myAndP(z,x,y);

    //main
    initial
        begin
            $dumpfile("test_and_p.vcd");
            $dumpvars;
            //inizialmente a 0 
            x=0;
            y=0;
            //dopo 2 secondi x diventa 1
            #2
                x=1;
            #2
                x=0;
                y=1;
            #2
                x=1;
                y=1;
            #2
                y=0;
                x=1;
            #3
                $finish;
        end
endmodule