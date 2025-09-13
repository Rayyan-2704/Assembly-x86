; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 1: Write an assembly program to store marks of two subjects (e.g., 45 and 35). Use ADD to
	calculate the total and SUB to find the difference between the two marks.
!

INCLUDE Irvine32.inc

.data
	marks1 DWORD 45
	marks2 DWORD 35
	total DWORD ?
	diff DWORD ?

.code
main PROC
	mov eax, marks1
	add eax, marks2
	mov total, eax

	mov ebx, marks1
	sub ebx, marks2
	mov diff, ebx

	call DumpRegs
	exit
main ENDP
END main
