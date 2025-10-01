; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	LENGTHOF operator usecase
!

INCLUDE Irvine32.inc

.data
	myBYTE    BYTE   10,20,30
	array1    WORD   30 DUP(?),0,0
	array2    WORD   5 DUP(3 DUP(?))
	array3    DWORD  1,2,3,4
	myMessage BYTE   "12345678",0

.code
main PROC
	mov eax, LENGTHOF myBYTE	; Elements in myBYTE (3)
	call WriteInt
	call CRLF

	mov eax, LENGTHOF array1	; Elements in array1 (32)
	call WriteInt
	call CRLF

	mov eax, LENGTHOF array2	; Elements in array2 (15)
	call WriteInt
	call CRLF

	mov eax, LENGTHOF array3	; Elements in array3 (4)
	call WriteInt
	call CRLF

	mov eax, LENGTHOF myMessage	; Elements in myMessage (9 including null)
	call WriteInt
	call CRLF

	exit
main ENDP
END main
