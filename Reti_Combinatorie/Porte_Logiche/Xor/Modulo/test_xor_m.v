module test_xor_m();
    //variabili
    reg x,y;
    wire z;
    xor_m myXorM(z,x,y);

    //main
    initial
        begin
            $dumpfile("test_xor_m.vcd");
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
                y=0;
            #3
                $finish;
        end
endmodule