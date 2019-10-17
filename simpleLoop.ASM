	MOV AL, 09	;
	MOV BL, 2F	;
	JMP loop	;

loop:			; This is a label 'loop'
	DEC AL		; Minus one from AL
	INC BL		; Add one to BL
	MOV [C3], BL	; Display result in VDU
	JNZ loop	; Go back to 'loop' - condition only if Zero Flag is not set
	END 		; End program