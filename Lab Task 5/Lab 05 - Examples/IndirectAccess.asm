; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Indirect accessing elements of an array using OFFSET operator
!

INCLUDE Irvine32.inc

.data
	byteVal BYTE 99h

.code
main PROC
	mov esi, OFFSET byteVal	; Load address of byteVal
	mov al, [esi]			; Get the BYTE value (10h)
	movzx eax, al
	call WriteHex

	exit
main ENDP
END main
