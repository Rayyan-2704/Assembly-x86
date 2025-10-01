; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	SIZEOF operator usecase
!

INCLUDE Irvine32.inc

.data
	myBYTE    BYTE   10 ,20, 30
	array1    WORD   30 DUP(?), 0, 0
	array2    WORD   5 DUP(3 DUP(?))
	array3    DWORD  1,2,3,4
	myMessage BYTE   "12345678",0

.code
main PROC
	mov eax, SIZEOF myBYTE		; Size of myBYTE (3 bytes)
	call WriteInt
	call CRLF

	mov eax, SIZEOF array1		; Size of array1
	call WriteInt
	call CRLF

	mov eax, SIZEOF array2		; Size of array2
	call WriteInt
	call CRLF

	mov eax, SIZEOF array3		; Size of array3
	call WriteInt
	call CRLF

	mov eax, SIZEOF myMessage	; Size of myMessage
	call WriteInt
	call CRLF

	exit
main ENDP
END main
