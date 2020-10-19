module sr(output q, output notq, input set, input reset);
    //salvo le uscite dei due or e poi dei due nor rispettivi
    wire or1,or2,nor1,nor2;

    //uso le primitive del verilog per fare la or e la not
    or(or1,reset,nor2);
    or(or2,set,nor1);

    not(nor1, or1);
    not(nor2, or2);

    //assegno i risultati ai miei output
    assign
        q = nor1;
    assign
        notq = nor2;
endmodule