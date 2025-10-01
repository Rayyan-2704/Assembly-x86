; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example of arrays of bytes, words, and dwords
!

INCLUDE Irvine32.inc

.data
	arrayB BYTE  10h, 20h, 30h
	arrayW WORD  1001h, 2002h, 3003h
	arrayD DWORD 11111111h, 22222222h, 33333333h

.code
main PROC
	; ----- BYTE array -----
	mov esi, OFFSET arrayB
	mov al, [esi]		; First BYTE (10h)
	movzx eax, al
	call WriteHex
	call CRLF

	inc esi
	mov al, [esi]		; Second BYTE (20h)
	movzx eax, al
	call WriteHex
	call CRLF

	; ----- WORD array -----
	mov esi, OFFSET arrayW
	mov ax, [esi]		; First WORD (1001h)
	movzx eax, ax
	call WriteHex
	call CRLF

	add esi, TYPE arrayW
	mov ax, [esi]		; Second WORD (2002h)
	movzx eax, ax
	call WriteHex
	call CRLF

	; ----- DWORD array -----
	mov esi, OFFSET arrayD
	mov eax, [esi]		; First DWORD (11111111h)
	call WriteHex
	call CRLF

	add esi, TYPE arrayD
	mov eax, [esi]		; Second DWORD (22222222h)
	call WriteHex
	call CRLF

	exit
main ENDP
END main
