module test_fa();

    //variabili
    reg rin,x, y;
    wire s,r;
    fa_1 myFa1(s,r,rin,x,y);
    //main
    initial
        begin
            $dumpfile("test_fa.vcd");
            $dumpvars;
            //provo a fare 0 + 0:
            rin=0;
            x=0;
            y=0;
            //provo a fare 0+1:
            #2
                x=0;
                y=1;
            //provo a fare 1+0:
            #2
                x=1;
                y=0;
            //provo a fare 1+1:
            #2
                y=1;
            //rimetto a 0+0:
            #2
                y=0;
                x=0;
            //fine
            #3
                $finish;
        end

endmodule