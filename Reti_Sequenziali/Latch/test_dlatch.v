module test_dlatch();
    reg d, clk;
    wire q,nq;
    dlatch Dlatch(q,nq,d,clk);

    //istanziamento clock (1 unità di frequenza)
    always
        begin
            #1
            clk = ~clk;
        end
    
    //main
    initial
        begin
            $dumpfile("test_dlatch.vcd");
            $dumpvars;

            d=0;
            clk=0;

            #2 d=1;
            #2 d=0;
            #2 d=1;
            #3 $finish;
        end
endmodule