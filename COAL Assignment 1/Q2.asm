; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 02

INCLUDE Irvine32.inc

.data
	num1 DWORD ?
	num2 DWORD ?
	num3 DWORD ?
	num4 DWORD ?
	colon BYTE ": ",0
	prompt BYTE "Enter the value of number ",0
	result DWORD ?
	msg BYTE "Final Result: ",0

.code
main PROC
	mov ebx, 0

	inc ebx
	mov edx, OFFSET prompt
	call WriteString
	mov eax, ebx
	call WriteDec
	mov edx, OFFSET colon
	call WriteString
	call ReadInt
	mov num1, eax

	inc ebx
	mov edx, OFFSET prompt
	call WriteString
	mov eax, ebx
	call WriteDec
	mov edx, OFFSET colon
	call WriteString
	call ReadInt
	mov num2, eax

	inc ebx
	mov edx, OFFSET prompt
	call WriteString
	mov eax, ebx
	call WriteDec
	mov edx, OFFSET colon
	call WriteString
	call ReadInt
	mov num3, eax

	inc ebx
	mov edx, OFFSET prompt
	call WriteString
	mov eax, ebx
	call WriteDec
	mov edx, OFFSET colon
	call WriteString
	call ReadInt
	mov num4, eax

L1:
	mov ebx, num2
	cmp num1, ebx
	jng L2

	mov ebx, num4
	cmp num3, ebx
	je L2

	mov eax, num1
	add eax, num3
	mov result, eax
	jmp display_result

L2:
	mov ebx, num4
	cmp num2, ebx
	jne L3
	mov eax, num2
	sub eax, num1
	mov result, eax
	jmp display_result

L3:
	mov result, 0

display_result:
	call CRLF
	call CRLF
	mov edx, OFFSET msg
	call WriteString
	mov eax, result
	call WriteInt

	exit
main ENDP
END main
