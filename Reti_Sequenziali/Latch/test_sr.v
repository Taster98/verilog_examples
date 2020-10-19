module test_sr();
    reg s,r;
    wire q, nq;

    sr SR(q,nq,s,r);

    //main
    initial
        begin
            $dumpfile("test_sr.vcd");
            $dumpvars;

            s=0;
            r=0;

            #2
            s=1;
            r=0;
            #2
            s=0;
            r=1;
            //qui da errore!
            #2
            s=1;
            r=1;
            #3
            $finish;
        end
endmodule