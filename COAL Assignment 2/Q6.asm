; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 06

INCLUDE Irvine32.inc

.data
    op1 DWORD 5
    op2 DWORD 8
    x DWORD 3
    y DWORD 6
    z DWORD 0
    msg BYTE "Final value of z: ",0

.code
main PROC
while_loop:
    mov eax, op2
    cmp op1, eax
    jg exit_loop

    mov eax, x
    cmp op1, eax
    jl else_condition

    mov eax, y
    cmp op1, eax
    jg else_condition

    add z, 10
    jmp next

else_condition:
    sub z, 10

next:
    dec op1
    jmp while_loop

exit_loop:
    mov eax, z
    mov edx, OFFSET msg
    call WriteString
    call WriteInt

    exit
main ENDP
END main
