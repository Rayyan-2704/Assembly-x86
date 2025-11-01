; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 03

INCLUDE Irvine32.inc

.data
	arr SDWORD 5,-10,15,-20,25,0
	sum SDWORD 0
	countArr DWORD ?
	msg BYTE "Sum: ",0

.code
main PROC
	mov eax, LENGTHOF arr
	mov countArr, eax

	mov ebx, 0
	mov esi, 0

calculate_sum:
	cmp ebx, countArr
	jge exit_program

	cmp arr[esi], 0
	jg add_sum
	dec sum
	jmp next

add_sum:
	mov eax, sum
	add eax, arr[esi]
	mov sum, eax

next:
	add esi, TYPE arr
	inc ebx
	jmp calculate_sum


exit_program:
	mov edx, OFFSET msg
	call WriteString
	mov eax, sum
	call WriteInt

	exit
main ENDP
END main
