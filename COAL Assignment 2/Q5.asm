; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 05

INCLUDE Irvine32.inc

.code
main PROC
	mov al, 0D4h
	shl al, 3
	movzx eax, al
	call WriteHex
	call CRLF

	mov al, 0D4h
	sal al, 3
	movzx eax, al
	call WriteHex
	call CRLF

	stc
	mov al, 0D4h
	rol al, 1
	movzx eax, al
	call WriteHex
	call CRLF

	stc
	mov al, 0D4h
	rcr al, 3
	movzx eax, al
	call WriteHex
	call CRLF

	exit
main ENDP
END main
