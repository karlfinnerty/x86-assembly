;----PROGRAM----
init:
	ADD BL, A9	; Choose which table
	ADD DL, 99	;
	MOV CL, 0A	;
	PUSH CL		;
	MOV AL, 00	;
	OUT 02		;
	MOV AL, 01	;
	OUT 02		;	
main:			; Count down from 9 and call procedure to display digit, making use of tables
	CALL 50		;
	DEC BL		;
	DEC CL		;
	JNZ main	;
	MOV BL, A9	;
	CALL 70		;
	POP CL		;
	DEC CL		;
	PUSH CL		;
	MOV CL, 0A	;
	DEC DL		;
	JNZ main	;
	HALT		;

;----PROCEDURES----
ORG 50			;
PUSH AL			;
PUSHF			;
r_digit:
	MOV AL, [BL]	;
	OUT 02		;
	POP AL		;
	POPF		;
	RET		;

ORG 70			;
PUSHF			;
PUSH AL			;
l_digit:
	MOV AL, [DL]	;
	OUT 02		;
	POP AL		;
	POPF		;
	RET		;

;----TABLES----
ORG 90			; Left digit
DB FA			; 0 - 11111010
DB 0A			; 1 - 00001010
DB B6			; 2 - 10110110
DB 9E			; 3 - 10011110
DB 4E			; 4 - 01001110
DB DC			; 5 - 11011100
DB FC			; 6 - 11111100
DB 8A			; 7 - 10001010
DB FE			; 8 - 11111110
DB DE			; 9 - 11011110
DB 00			; Clear - 00000000

ORG A0			; Right Digit
DB FB			; 0 - 11111011
DB 0B			; 1 - 00001011
DB B7			; 2 - 10110111
DB 9F			; 3 - 10011111
DB 4F			; 4 - 01001111
DB DD			; 5 - 11011101
DB FD			; 6 - 11111101
DB 8B			; 7 - 10001011
DB FF			; 8 - 11111111
DB DF			; 9 - 11011111
DB 01			; Clear - 00000000

;----EXIT----
ORG B0			;
exit:
	END		;
