program:
	MOV AL, 45	;
	MOV [C0], AL	;
	MOV AL, 46	;
	MOV [FF], AL	;
	CALL 50		;
	END		;


ORG 50			;
PUSHF			;
PUSH AL			;
PUSH BL			;
MOV AL, C0		;
procedure:
	MOV [AL], BL	;
	INC AL		;
	CMP AL, 00	;
	JNZ procedure	;
	RET		;	