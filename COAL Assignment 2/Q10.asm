; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 10

INCLUDE Irvine32.inc

COMMENT !
    Intuition:
    26 = 16 + 8 + 2
    26 = 2^4 + 2^3 + 2^1

    2^4 = shift left 4 times
    2^3 = shift left 3 times
    2^1 = shift left 1 time

    EAX * 26 = (EAX * 2^4) + (EAX * 2^3) + (EAX * 2^1)
!

.data
    initialVal DWORD 2
    result DWORD 0
    msg BYTE "2 * 26 = ",0

.code
main PROC
    mov eax, initialVal
    shl eax, 4
    mov result, eax

    mov eax, initialVal
    shl eax, 3
    add result, eax

    mov eax, initialVal
    shl eax, 1
    add result, eax

    mov eax, result
    mov edx, OFFSET msg
    call WriteString
    call WriteInt

    exit
main ENDP
END main
