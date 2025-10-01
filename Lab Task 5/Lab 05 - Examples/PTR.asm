; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	PTR operator usecase
!

INCLUDE Irvine32.inc

.data
	myDouble DWORD 12345678h

.code
main PROC
	mov ax, WORD PTR myDouble	; Load lower WORD (5678h)
	movzx eax, ax
	call WriteHex
	call CRLF

	mov ax, WORD PTR [myDouble+2]	; Load higher WORD (1234h)
	movzx eax, ax
	call WriteHex
	call CRLF

	mov ah, BYTE PTR myDouble	; Load low BYTE (78h) into AH
	movzx eax, ah
	call WriteHex
	call CRLF

	exit
main ENDP
END main
