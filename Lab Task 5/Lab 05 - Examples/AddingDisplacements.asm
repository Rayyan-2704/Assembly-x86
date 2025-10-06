; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Adding Displacements in Assembly (Pointer Arithmetic)
!

INCLUDE Irvine32.inc

.data
	arrayB WORD 20, 40, 60, 80

.code
main PROC
	mov esi, OFFSET arrayB

	mov ax, [esi]			; First element (20)
	movzx eax, ax
	call WriteInt
	call CRLF

	mov ax, [esi+2]			; Second element (40)
	movzx eax, ax
	call WriteInt
	call CRLF

	mov ax, [esi+4]			; Third element (60)
	movzx eax, ax
	call WriteInt
	call CRLF

	mov ax, [esi+6]			; Fourth element (80)
	movzx eax, ax
	call WriteInt
	call CRLF

	exit
main ENDP
END main
