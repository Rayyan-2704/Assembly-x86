; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 1: Convert the following high-level instruction into Assembly Language:
	ebx = { (a+b) – (a-b) + c } +d
	a = 10h, b = 12h, c = 20h, d = 25h
!

INCLUDE Irvine32.inc

.data
	varA DWORD 10h
	varB DWORD 12h
	varC DWORD 20h
	varD DWORD 25h

.code
main PROC
	mov eax, varA
	add eax, varB

	mov ecx, varA
	sub ecx, varB

	sub eax, ecx
	add eax, varC
	add eax, varD

	mov ebx, eax
	call DumpRegs
	exit
main ENDP
END main
