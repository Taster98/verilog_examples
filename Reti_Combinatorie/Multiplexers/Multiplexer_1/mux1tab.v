primitive mux1(output z, input ctrl, input x, input y);
    table
        0 0 ? : 0;
        0 1 ? : 1;
        1 ? 0 : 0;
        1 ? 1 : 1;
    endtable
endprimitive