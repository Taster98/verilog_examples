module S(output [0:1]news, input x, input [0:1]s);
    assign
        news[0] = ((~s[0])&&s[1]&&x) || (s[0]&&(~s[1])&&~x) || (s[0]&&(~s[1])&&x) || (s[0]&&s[1]&&~x);
    assign
        news[1] = ((~s[0])&&(~s[1])&&x) || ((~s[0])&&s[1]&&~x) || (s[0]&&(~s[1])&&x) || (s[0]&&s[1]&&~x);
endmodule