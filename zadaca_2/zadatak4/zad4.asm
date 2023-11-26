@SCREEN
D = A

@address
M = D

@i
M = 0

(COLUMN_START)
	@128
	D = A
	
	@i
	D = M - D
	
	@COLUMN_END
	D; JGE

	@1
	D = A

	@address
	A = M
	M = D
	
	@i
	M = M + 1
	
	@32
	D = A
	@address
	M = M + D

	@COLUMN_START
	0; JMP

(COLUMN_END)

@i
M = 0

(ROW_START)
	@8
	D = A
	
	@i
	D = M - D
	
	@ROW_END
	D; JGE

	@address
	A = M
	M = -1
	
	@i
	M = M + 1

	@address
	M = M + 1

	@ROW_START
	0; JMP

(ROW_END)

@i
M = 0

(ROW2_START)
    @i
    D = M;
    @8
    D = D - A;
    @ROW2_END
    D; JGE
    
    @i
    D = M;
    @SCREEN
    A = A + D;
    M = -1;
    
    @1
    D = A;
    @i
    M = M + D;
    
    @ROW2_START
    0; JMP
(ROW2_END)

@8
D = A;
@i
M = D;

(COLUMN2_START)
    @i
    D = M;
    @4096
    D = D - A;
    @COLUMN2_END
    D; JGE
    
    @i
    D = M;
    @SCREEN
    A = A + D;
    M = 1;
    
    @32
    D = A;
    @i
    M = M + D;
    
    @COLUMN2_START
    0; JMP
(COLUMN2_END)

(END)
@END
0; JMP