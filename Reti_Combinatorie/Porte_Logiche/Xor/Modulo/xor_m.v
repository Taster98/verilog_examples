module xor_m(output z, input x, input y);
    assign
        z = (x & ~y) | (~x & y);
endmodule