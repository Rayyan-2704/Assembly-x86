; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 3: Declare the following signed/unsigned variables:
	valA SBYTE -15
	valB BYTE 25
	valC WORD ?
	Write a program to compute:
	valC = valA + valB – 5
	Use `ADD`, `SUB`, and `MOVSX` (sign extension) instructions wherever required.
!

INCLUDE Irvine32.inc

.data
	valA SBYTE -15
	valB BYTE 25
	valC WORD ?

.code
main PROC
	movsx ax, valA
	movzx bx, valB
	add ax, bx
	sub ax, 5
	mov valC, ax

	movzx ebx, valC  ; to check the output
	call DumpRegs
	exit
main ENDP
END main
