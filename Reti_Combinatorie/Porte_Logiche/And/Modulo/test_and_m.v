module test_and_m();
    //variabili
    reg x,y;
    wire z;
    and_m myAndM(z,x,y);

    initial
        begin
            $dumpfile("test_and_m.vcd");
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
                y=1;
            #2 
                x=0;
            #3
                $finish;
        end

endmodule