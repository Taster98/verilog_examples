module Z(output [0:1]z, input x, input [0:1]s);
    assign
        z[0] = ((~s[0])&&s[1]&&x) || (s[0]&&(~s[1])&&~x) || (s[0]&&(~s[1])&&x) || (s[0]&&s[1]&&~x);
    assign
        z[1] = ((~s[0])&&(~s[1])&&x) || ((~s[0])&&s[1]&&~x) || (s[0]&&(~s[1])&&x) || (s[0]&&s[1]&&~x);
endmodule