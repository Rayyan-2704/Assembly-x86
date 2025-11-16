; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program which contains a procedure named TakeInput which takes input numbers from user and call a procedure named GCD
    which calculates their GCD and display the answer on console by calling another function Display. (Also show ESP values during nested function calls)
!

INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter the first number: ",0
    msg2 BYTE "Enter the second number: ",0
    msg3 BYTE "GCD is ",0
    msg4 BYTE "ESP is ",0

.code
main PROC
    call TakeInput
    exit
main ENDP

TakeInput PROC
    push ebp
    mov ebp, esp

    mov edx, OFFSET msg4
    call WriteString
    mov eax, esp
    call WriteHex
    call CRLF

    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    push eax

    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    push eax

    call GCD
    add esp, 8

    pop ebp
    ret
TakeInput ENDP

GCD PROC
    push ebp
    mov ebp, esp

    mov edx, OFFSET msg4
    call WriteString
    mov eax, esp
    call WriteHex
    call CRLF

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]

gcd_loop:
    cmp ebx, 0
    je done
    mov edx, 0
    div ebx
    mov eax, ebx
    mov ebx, edx
    jmp gcd_loop

done:
    push eax
    call Display
    add esp, 4 

    pop ebp
    ret
GCD ENDP

Display PROC
    push ebp
    mov ebp, esp

    mov edx, OFFSET msg4
    call WriteString
    mov eax, esp
    call WriteHex
    call CRLF

    mov edx, OFFSET msg3
    call WriteString
    mov eax, [ebp+8]
    call WriteInt
    call CRLF

    pop ebp
    ret
Display ENDP

END main
