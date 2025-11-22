; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	In the .data section, declare the following variables:
	A signed BYTE variable snum initialized with -100.
	An unsigned BYTE variable unum initialized with 200.
	An uninitialized BYTE variable holder.
!

INCLUDE Irvine32.inc

.data
	snum SBYTE -100
	unum BYTE 200
	num BYTE ?

.code
main PROC
	
	exit
main ENDP
END main
