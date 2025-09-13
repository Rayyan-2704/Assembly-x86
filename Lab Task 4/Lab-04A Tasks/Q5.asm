; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 5: Load a signed byte value -10 into a register and extend it to word size using MOVSX. Do
	the same with MOVZX.
!

INCLUDE Irvine32.inc

.data
	value SBYTE -10

.code
main PROC
	movsx ax, value
	movzx bx, value

	call DumpRegs
	exit
main ENDP
END main
