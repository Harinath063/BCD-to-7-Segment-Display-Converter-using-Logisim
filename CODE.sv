module bcd_to_7seg (
input  logic [3:0] bcd,
output logic [6:0] seg   // {a,b,c,d,e,f,g}
);

always_comb begin
case (bcd)
4'd0: seg = 7'b1111110;
4'd1: seg = 7'b0110000;
4'd2: seg = 7'b1101101;
4'd3: seg = 7'b1111001;
4'd4: seg = 7'b0110011;
4'd5: seg = 7'b1011011;
4'd6: seg = 7'b1011111;
4'd7: seg = 7'b1110000;
4'd8: seg = 7'b1111111;
4'd9: seg = 7'b1111011;
default: seg = 7'b0000000; // invalid BCD → OFF
endcase
end

endmodule


module tb_bcd_to_7seg;

```
logic [3:0] bcd;
logic [6:0] seg;

// DUT
bcd_to_7seg dut (
    .bcd(bcd),
    .seg(seg)
);

// Expected values
function logic [6:0] expected_seg(input logic [3:0] val);
    case (val)
        4'd0: expected_seg = 7'b1111110;
        4'd1: expected_seg = 7'b0110000;
        4'd2: expected_seg = 7'b1101101;
        4'd3: expected_seg = 7'b1111001;
        4'd4: expected_seg = 7'b0110011;
        4'd5: expected_seg = 7'b1011011;
        4'd6: expected_seg = 7'b1011111;
        4'd7: expected_seg = 7'b1110000;
        4'd8: expected_seg = 7'b1111111;
        4'd9: expected_seg = 7'b1111011;
        default: expected_seg = 7'b0000000;
    endcase
endfunction

initial begin
    $display("Starting Test...");

    for (int i = 0; i < 16; i++) begin
        bcd = i;
        #1;

        if (seg !== expected_seg(i)) begin
            $display("FAIL: BCD=%0d Expected=%b Got=%b", i, expected_seg(i), seg);
        end else begin
            $display("PASS: BCD=%0d Output=%b", i, seg);
        end
    end

    $display("Test Completed.");
    $finish;
end
```

endmodule
