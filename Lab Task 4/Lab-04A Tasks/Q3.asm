; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 3: Store the day and night temperatures (30 and 18). Calculate the difference and increment
	night temperature by 2.
!

INCLUDE Irvine32.inc

.data
	dayTemp DWORD 30
	nightTemp DWORD 18
	diff DWORD ?

.code
main PROC
	mov eax, dayTemp
	sub eax, nightTemp
	mov diff, eax
	call WriteInt
	call CRLF

	mov eax, nightTemp
	inc eax
	inc eax
	mov nightTemp, eax
	call WriteInt
	call CRLF

	exit
main ENDP
END main
