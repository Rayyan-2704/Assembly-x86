; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 1: Write a program that declares the following variables:
	- A byte variable num1 initialized with 25.
	- A word variable num2 initialized with 1200h.
	- A doubleword variable num3 uninitialized.
	Move the contents of num1 into AL, num2 into AX, and finally move both into num3 using `MOVZX` instruction.
!

INCLUDE Irvine32.inc

.data
	num1 BYTE 25
	num2 WORD 1200h
	num3 DWORD ?

.code
main PROC
	mov al, num1
	mov ax, num2

	movzx eax, num1
	mov num3, eax

	movzx eax, num2
	mov num3, eax

	call DumpRegs
	exit
main ENDP
END main
