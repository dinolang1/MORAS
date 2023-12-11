@1
D = M

@10
M = D
M = M - 1

@0
D = M

@11
M = D

$WHILE(10)
	@10
	M = M - 1

	@0
	D = M

	@13
	M = D
	M = M - 1

	@11
	D = M

	@12
	M = D

	$WHILE(13)
		@13
		M = M - 1

		$SUM(11,12,11)
	$END

$END

$MV(11,2)

(END)
@END
0; JMP 

