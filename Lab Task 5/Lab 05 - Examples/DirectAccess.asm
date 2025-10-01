; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Accessing array elements directly
!

INCLUDE Irvine32.inc

.data
	arrayB BYTE 10h, 20h, 30h, 40h
	arrayW WORD 100h, 200h, 300h

.code
main PROC
	; ----- BYTE array -----
	mov al, arrayB		; First BYTE element (10h)
	movzx eax, al
	call WriteHex
	call CRLF

	mov al, [arrayB+1]	; Second BYTE element (20h)
	movzx eax, al
	call WriteHex
	call CRLF

	; ----- WORD array -----
	mov ax, arrayW		; First WORD element (0100h)
	movzx eax, ax
	call WriteHex
	call CRLF

	mov ax, [arrayW+2]	; Second WORD element (0200h)
	movzx eax, ax
	call WriteHex
	call CRLF

	exit
main ENDP
END main
