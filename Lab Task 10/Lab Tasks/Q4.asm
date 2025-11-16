; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program that calculates factorial of a given number n.
    Make a recursive procedure named Fact that takes n as an input parameter.
!

INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter a number: ",0
    msg2 BYTE "Factorial is ",0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    push eax
    call Fact
    add esp, 4

    mov edx, OFFSET msg2
    call WriteString
    call WriteInt
    call CRLF

    exit
main ENDP

Fact PROC
    push ebp
    mov  ebp, esp
    push ebx

    mov eax, [ebp+8]
    cmp eax, 1
    jbe base_case

    mov ebx, eax
    dec eax
    push eax
    call Fact
    add esp, 4

    imul eax, ebx
    jmp done

base_case:
    mov eax, 1

done:
    pop ebx
    pop ebp
    ret
Fact ENDP

END main
