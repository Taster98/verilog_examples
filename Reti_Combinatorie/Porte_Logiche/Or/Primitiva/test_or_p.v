module test_or_p();
    //variabili
    reg x,y;
    wire z;
    or_p myOrP(z,x,y);

    //main
    initial
        begin
            $dumpfile("test_or_p.vcd");
            $dumpvars;

            x=0;
            y=0;
            #2
                x=1;
            #2
                x=0;
                y=1;
            #2
                x=1;
            #2
                x=0;
                y=0;
            #3 
                $finish;
        end
endmodule