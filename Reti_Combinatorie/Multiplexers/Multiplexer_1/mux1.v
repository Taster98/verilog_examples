module mux1(output z, input ctrl, input x, input y);
    //implemento un multiplexer da 2 ingressi da un bit
    //se ctrl = 1 allora x else y:
    assign
        z = (~ctrl & x) | (ctrl & y);
endmodule