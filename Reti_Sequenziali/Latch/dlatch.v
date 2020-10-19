module dlatch(output q, output notq, input d, input clk);
    //le uscite di questo sono set e reset da mettere in ingresso a sr
    wire s, r;
    
    assign
        r = clk && ~d;
    assign
        s = clk && d;

    sr SR(q,notq,s,r);
endmodule