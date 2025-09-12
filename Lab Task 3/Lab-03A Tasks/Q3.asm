; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 3: Declare a string variable containing the word “NUCES” repeated 200 times.
!

INCLUDE Irvine32.inc

.data
	message BYTE 200 DUP("NUCES"), 0

.code
main PROC
	mov edx, OFFSET message

	call WriteString
	exit
main ENDP
END main
