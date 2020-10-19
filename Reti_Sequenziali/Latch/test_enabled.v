module test_enabled();
    reg en, d, clk;
    wire q,nq;
    enabled E(q,nq,clk,en,d);

    //ciclo del clock
    always
        begin
            #1 clk = ~clk;
        end
    
    //main
    initial
        begin
            $dumpfile("test_enabled.vcd");
            $dumpvars;
            en=0;
            d=0;
            clk=0;
            #2
            d=1;
            #2
            en=1;
            #2
            d=0;
            #2
            en=0;
            d=1;
            #3
            $finish;
        end
endmodule