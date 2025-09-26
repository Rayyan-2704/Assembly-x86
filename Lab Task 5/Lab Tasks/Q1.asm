; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 01: Move an immediate value of fifteen thousand in a 32-bit register. Observe the carry and sign flag by incrementing the value of the 32-bit register 
	by 1 using ADD instruction. 
!

INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 15000
	add eax, 1

	call DumpRegs
	exit
main ENDP
END main
