	MOV AL, 04	;
	MOV BL, 2F	;
	JMP loop	;

loop:			; This is a label 'loop'
	DEC AL		; Minus one from AL
	JMP addOne	; Jump to label 'addOne'
	JNZ loop	; Go back to 'loop' - condition only if Zero Flag is not set
	END 		; End program

addOne:
	INC BL		; Increase BL by 1
	MOV [C0], BL	; Display BL (ASCII) in VDU
	JMP loop	;
	END		;

