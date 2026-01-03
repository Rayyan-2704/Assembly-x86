; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write a program using the Irvine Library that multiplies two positive integers without using the MUL, IMUL, or repeated addition method.
    Use bitwise shift and conditional logic to perform the multiplication (i.e., based on the binary representation of the multiplier).
    Display the final product.
!

INCLUDE Irvine32.inc

.data

    promptA BYTE "Enter the first value: ",0
    promptB BYTE "Enter the second value: ",0
    msgProd BYTE "The result (product) = ",0

    valA DWORD ?
    valB DWORD ?
    result DWORD 0

.code
main PROC
    mov edx, OFFSET promptA
    call WriteString
    call ReadInt
    mov valA, eax

    mov edx, OFFSET promptB
    call WriteString
    call ReadInt
    mov valB, eax

    mov eax, valA
    mov ebx, valB
    mov ecx, 0

multiply_next:
    test ebx, 1
    jz skip_add
    add ecx, eax

skip_add:
    shl eax, 1
    shr ebx, 1
    cmp ebx, 0
    jne multiply_next

    mov edx, OFFSET msgProd
    call WriteString
    mov eax, ecx
    call WriteDec
    call CRLF

    exit
main ENDP
END main
