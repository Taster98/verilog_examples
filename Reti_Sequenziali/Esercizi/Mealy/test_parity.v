module test_parity();
    //Tanti reg quanti gli input e tanti wire quanti gli output:
    reg x, clk;
    wire z;
    //istanzio il modulo:
    parity p(z,x,clk);

    //ciclo di clock:
    always
        begin
            #1 clk = ~clk;
        end

    //main:
    initial
        begin
            $dumpfile("test_parity.vcd");
            $dumpvars;
            //inizialmente tutto a 0:
            clk=0;
            x=0;
            //Dopo 2 unità mando un uno:
            #3
            x=1;
            //dopo altre due unità mando uno zero
            #3
            x=0;
            //dopo altre due unità un altro zero
            #3
            x=0;
            //dopo due unità un uno:
            #3
            x=1;
            //Dopo 3 unità uno 0 e termino
            #3 x=0;
            #5 $finish;
        end
endmodule