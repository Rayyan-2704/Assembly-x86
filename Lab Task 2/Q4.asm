; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: Assume all registers (EAX, EBX, ECX, EDX) initially hold some values.
	   ECX Calculation: In a digital system, compute: ecx = 101011010110b + 3Ah – 64o + ebx – ecx + 5
!

INCLUDE Irvine32.inc

.code
main PROC
	; assigning random value to ebx
	mov ebx, 20

	mov ecx, 101011010110b
	add ecx, 3Ah
	sub ecx, 64o
	add ecx, ebx
	sub ecx, ecx
	add ecx, 5

	mov eax, ecx  ; moving the value of ecx into eax to print it
	call WriteInt

	exit
main ENDP
END main
