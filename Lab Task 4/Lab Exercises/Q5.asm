; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 5: Write a program that demonstrates `XCHG` instruction:
	1. Declare two 16-bit variables `num1 = 1234h` and `num2 = 5678h`.
	2. Load them into `AX` and `BX`.
	3. Use `XCHG` to swap their values.
	4. Store the exchanged values back into the variables.
!

INCLUDE Irvine32.inc

.data
	num1 WORD 1234h
	num2 WORD 5678h

.code
main PROC
	mov ax, num1
	mov bx, num2

	xchg ax, bx

	mov num1, ax
	mov num2, bx

	call DumpRegs
	exit
main ENDP
END main
