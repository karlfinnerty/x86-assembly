
loop:			; Turn off all lights
	MOV AL, 0	; 
	OUT 01		;
			; Turn on all lights
	MOV AL, FC	;
	OUT 01		;
	JMP loop	;
	END 		;
