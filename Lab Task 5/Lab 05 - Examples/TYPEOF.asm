; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	TYPEOF operator usecase
!

INCLUDE Irvine32.inc

.data
	myDouble DWORD 12345678h
	myBYTE   BYTE  ?
	myWord   WORD  45o

.code
main PROC
	mov eax, TYPE myDouble		; TYPE of myDouble (4 bytes)
	call WriteInt
	call CRLF

	mov eax, TYPE myBYTE		; TYPE of myBYTE (1 byte)
	call WriteInt
	call CRLF

	mov eax, TYPE myWord		; TYPE of myWord (2 byte)
	call WriteInt
	call CRLF

	exit
main ENDP
END main
