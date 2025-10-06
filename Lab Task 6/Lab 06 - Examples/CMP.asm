; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	The usecase of CMP operator
!

INCLUDE Irvine32.inc
.code
main PROC
	; EQUAL
	mov eax, 20
	mov ebx, 20
	cmp eax, ebx  ; CF = 0, ZF = 1, SF = 0
	call DumpRegs

	; GREATER
	mov eax, 50
	mov ebx, 25
	cmp eax, ebx  ; CF = 0, ZF = 0, SF = 0
	call DumpRegs

	; LESSER
	mov eax, 10
	mov ebx, 70
	cmp eax, ebx  ; CF = 1, ZF = 0, SF = 1
	call DumpRegs

	exit
main ENDP
END main
