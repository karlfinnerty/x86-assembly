MOV AL,	90	; Initialisation 
OUT 01		;

loop:			

			; Sequence s1
	MOV AL,	30	; Green - Red 00110000 
	OUT 01		;
			; Sequence s2
	MOV AL, 50	; Amber - Red 01010000
	OUT 01		;
			; Sequence s3
	MOV AL, 90	; Red - Red 10010000
	OUT 01		;
			; Sequence s4
	MOV AL, 84	; Red - Green 10000100
	OUT 01		;
			; Sequence s5
	MOV AL, 88	; Red - Amber 10001000
	OUT 01		;
	MOV AL,	90	; Sequence s5
	OUT 01		; Red - Red
	JMP loop	;
	END		;