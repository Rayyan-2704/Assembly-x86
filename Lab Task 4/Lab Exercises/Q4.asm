; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 4: Convert the following high-level instruction into Assembly:
	EDX = (x + y) – (z + w)
	Where:
	- x = 12h
	- y = 14h
	- z = 5h
	- w = 10h
	Store the final result in a word variable named `FinalResult`.
!

INCLUDE Irvine32.inc

.data
	x DWORD 12h
	y DWORD 14h
	z DWORD 5h
	w DWORD 10h
	FinalResult WORD ?

.code
main PROC
	mov eax, x
	add eax, y

	mov ebx, z
	add ebx, w

	sub eax, ebx
	mov edx, eax

	mov FinalResult, dx
	call DumpRegs
	exit
main ENDP
END main
