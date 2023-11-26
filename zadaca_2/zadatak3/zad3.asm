@i
M = 0;

@5
M = 0;

(LP_START)
	@i
	D = M;
	@5
	D = D - A;
	@LP_END
	D; JGE
	
	
	@i
	A = M;
	D = M;
	
	D = D - 1;
	@+
	D; JLT
	
	@5
	M = M + D;
	M = M + 1;
	
	
	(+)
	@i
	M = M + 1;
	
	@LP_START
	0; JMP
(LP_END)

(END)
@END
0; JMP