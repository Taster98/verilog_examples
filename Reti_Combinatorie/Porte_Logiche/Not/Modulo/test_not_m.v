module test_not_m();
    //variabili
    reg x;
    wire z;
    not_m myNotM(z,x);

    //main
    initial
        begin
            $dumpfile("test_not_m.vcd");
            $dumpvars;
            //stessa roba di prima
            x = 0;
            #2 
               x=1;
            #2
               x=0;
            #3
               $finish;
        end
endmodule