; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 8: Initialize AX = 10, BX = 20. Swap their contents using XCHG.
!

INCLUDE Irvine32.inc

.code
main PROC
	mov ax, 10
	mov bx, 20

	xchg ax, bx
	call DumpRegs
	exit
main ENDP
END main
