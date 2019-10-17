
MOV AL, FC		;
JMP overflow

overflow:
	PUSH AL		;
	JMP overflow	;

underflow:
	POP AL
	JMP underflow
	END		;