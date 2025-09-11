; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 2: Using the following symbolic constant definitions:
	COUNT = 5
	LIMIT EQU 10
	Write an assembly program that:
	1. Initializes AX with COUNT.
	2. Adds LIMIT to AX.
	3. Increments the result using INC.
	4. Stores the final result in a variable named Result.
!

INCLUDE Irvine32.inc

COUNT = 5
LIMIT EQU 10

.data
	Result WORD ?

.code
main PROC
	mov ax, COUNT
	add ax, LIMIT
	inc ax
	mov Result, ax

	movzx ebx, ax  ; to check the output
	call DumpRegs
	exit
main ENDP
END main
