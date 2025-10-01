; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	OFFSET operator usecase
!

INCLUDE Irvine32.inc

.data
	bVal BYTE ?
	wVal WORD ?
	dVal DWORD ?

.code
main PROC
	mov esi, OFFSET bVal	; Address of bVal
	mov eax, esi
	call WriteInt
	call CRLF

	mov esi, OFFSET wVal	; Address of wVal
	mov eax, esi
	call WriteInt
	call CRLF

	mov esi, OFFSET dVal	; Address of dVal
	mov eax, esi
	call WriteInt
	call CRLF

	exit
main ENDP
END main
