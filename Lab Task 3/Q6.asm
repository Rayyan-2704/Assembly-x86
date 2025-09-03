; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	In the .data section:
	Create an array named marks of 8 bytes, each initialized with 5.
	Reserve 5 words (2 bytes each) uninitialized.
!

INCLUDE Irvine32.inc

.data
	marks BYTE 8 DUP(5)
	list WORD 5 DUP(?)

.code
main PROC
	
	exit
main ENDP
END main
