module nand_gate_tb;
	logic a, b;
	logic y;

	nand_gate DUT(
		.a(a),
		.b(b),
		.y(y)
	);

	initial begin
		a = 0; b = 0; #1;
		assert (y === 1);

		a = 1; b = 0; #1;
		assert (y === 1);

		a = 0; b = 1; #1;
		assert (y === 1);

		a = 1; b = 1; #1;
		assert (y === 0);
		
		$display("PASS");
		$finish;
	end

		

endmodule
