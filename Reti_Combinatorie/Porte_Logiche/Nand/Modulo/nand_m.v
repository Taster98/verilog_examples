module nand_m(output z, input x, input y);
    assign
        z = ~(x&y);
endmodule