; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task # 04: Declare three 32-bit variables:
	Xval = 25, Yval = 15, Zval = 40
	Write a program to Compute : - (Xval + Yval - Zval)
	Use add, sub, and neg instructions step by step.
	Store the result in a variable Rval.
!

INCLUDE Irvine32.inc

.data
	Xval DWORD 25
	Yval DWORD 15
	Zval DWORD 40
	Rval DWORD ?

.code
main PROC
	mov eax, Xval
	add eax, Yval
	sub eax, Zval
	neg eax
	mov Rval, eax

	call DumpRegs
	exit
main ENDP
END main
