module mux2_1_tb;

	logic a, b, s;
	logic y;


	mux2_1 dut(
		.a(a),
		.b(b),
		.s(s),
		.y(y)
	);


	initial begin
		a = 0; b = 0; s = 0; #1;
		assert (y === 0);

		a = 0; b = 0; s = 1; #1;
		assert (y === 0);

		a = 1; b = 0; s = 0; #1;
		assert (y === 1);

		a = 1; b = 0; s = 1; #1;
		assert (y === 0);

		a = 0; b = 1; s = 0; #1;
		assert (y === 0);

		a = 0; b = 1; s = 1; #1;
		assert (y === 1);

		a = 1; b = 1; s = 0; #1;
		assert (y === 1);

		a = 1; b = 1; s = 1; #1;
		assert (y === 1);

		$display("PASS");
		$finish;
	end
endmodule
