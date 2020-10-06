module test_fa();

    //variabili
    reg rin;
    reg [1:0]x,y;
    wire [1:0]s;
    wire r;
    fa_2 fa2(s,r,rin,x,y);
    //main
    initial
        begin
            $dumpfile("test_fa2.vcd");
            $dumpvars;
            //provo a fare 0 + 0:
            rin=0;
            x[0]=0;
            y[0]=0;
            x[1]=0;
            y[1]=0;
            //provo a fare 0+1:
            #2;
            x[0]=0;
            y[0]=1;
            x[1]=0;
            y[1]=0;
            //provo a fare 1+0:
            #2;
            x[0]=1;
            y[0]=0;
            x[1]=0;
            y[1]=0;
            //provo a fare 1+1:
            #2;
            x[0]=1;
            y[0]=1;
            x[1]=0;
            y[1]=0;
            //provo a fare 1+2:
            #2;
            x[0]=1;
            y[0]=0;
            x[1]=0;
            y[1]=1;
            //provo a fare 2+2:
            #2;
            x[0]=0;
            y[0]=0;
            x[1]=1;
            y[1]=1;
            //provo a fare 2+1:
            #2;
            x[0]=0;
            y[0]=1;
            x[1]=1;
            y[1]=0;
            //provo a fare 3+3:
            #2;
            x[0]=1;
            y[0]=1;
            x[1]=1;
            y[1]=1;
            //rimetto a 0+0:
            #2;
            x[0]=0;
            y[0]=0;
            x[1]=0;
            y[1]=0;
            //fine
            #3
                $finish;
        end

endmodule