$MV(0, 1)

@1
M = M - 1

$WHILE(1)

	@1
	M = M - 1

	$MV(0, 2)
	
	@2
	M = M - 1

	@i
	M = 0

	$WHILE(2)
	
		@2
		M = M - 1

		@100
		D = A

		@curr
		M = D

		@next
		M = D
		M = M + 1

		$SUM(curr, i, curr)
		$SUM(next, i, next)

		@curr
		A = M
		D = M

		@next
		A = M
		D = M - D

		@DONT_SWAP
		D;JGE

		@curr
		A=M
		D=M

		@swp
		M=D

		@next
		A=M
		D=M

		@curr
		A=M
		M=D

		@swp
		D=M

		@next
		A=M
		M=D

		(DONT_SWAP)

		@i
		M = M + 1

	$END

$END

(END)
@END
0; JMP 

