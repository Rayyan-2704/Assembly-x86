; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Define a string variable called message initialized with "Hello World".
!

INCLUDE Irvine32.inc

.data
	message BYTE "Hello World", 0

.code
main PROC
	mov edx, OFFSET message
	call WriteString
	exit
main ENDP
END main
