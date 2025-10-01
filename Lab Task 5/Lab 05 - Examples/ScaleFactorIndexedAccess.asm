; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Accessing elements of a DWORD array using TYPE operator.
!

INCLUDE Irvine32.inc

.data
	arrayB DWORD 20, 40, 60, 80

.code
main PROC
	mov esi, 0
	mov eax, arrayB[esi * TYPE arrayB]	; First element (20)
	call WriteInt
	call CRLF

	inc esi
	mov eax, arrayB[esi * TYPE arrayB]	; Second element (40)
	call WriteInt
	call CRLF

	inc esi
	mov eax, arrayB[esi * TYPE arrayB]	; Third element (60)
	call WriteInt
	call CRLF

	exit
main ENDP
END main
