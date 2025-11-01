; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 07

INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter a number: ",0
	msgZero BYTE "The number entered is zero.",0
	msgPos BYTE "The number entered is positive.",0
	msgNeg BYTE "The number entered is negative.",0
	num SBYTE ?

.code
main PROC
	mov edx, OFFSET prompt
	call WriteString
	call ReadInt
	mov num, al

	cmp num, 0
	je ZERO
	jg POSITIVE

	call CRLF
	call CRLF
	mov edx, OFFSET msgNeg
	call WriteString
	jmp end_program

ZERO:
	call CRLF
	call CRLF
	mov edx, OFFSET msgZero
	call WriteString
	jmp end_program

POSITIVE:
	call CRLF
	call CRLF
	mov edx, OFFSET msgPos
	call WriteString

end_program:
	exit
main ENDP
END main
