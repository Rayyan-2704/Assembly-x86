; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Accessing BYTE array elements using an index
!

INCLUDE Irvine32.inc

.data
	arrayB BYTE 20, 40, 60, 80

.code
main PROC
	mov esi, 0
	mov al, arrayB[esi]		; First element (20)
	movzx eax, al
	call WriteInt
	call CRLF

	inc esi
	mov al, arrayB[esi]		; Second element (40)
	movzx eax, al
	call WriteInt
	call CRLF

	inc esi
	mov al, [arrayB + esi]	; Fourth element (80)
	; Alternative form: mov al, arrayB[esi]
	movzx eax, al
	call WriteInt
	call CRLF

	exit
main ENDP
END main
