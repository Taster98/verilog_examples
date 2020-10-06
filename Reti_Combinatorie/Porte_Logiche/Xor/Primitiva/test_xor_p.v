module test_xor_p();
    //variabili
    reg x,y;
    wire z;
    xor_p myXorP(z,x,y);

    //main
    initial
        begin
            $dumpfile("test_xor_p.vcd");
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