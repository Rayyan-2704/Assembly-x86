; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 9: Write a program which declares a symbolic constant named SecondsInDay using the
	equal-sign directive and assign it an arithmetic expression that calculates the number of seconds
	in a 24-hour period.
!

INCLUDE Irvine32.inc

SecondsInDay = 24 * 60 * 60

.data
	result DWORD SecondsInDay

.code
main PROC
	mov eax, SecondsInDay
	call WriteInt

	exit
main ENDP
END main
