; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 08

INCLUDE Irvine32.inc

.data
    num1 SWORD ?
    num2 SWORD ?
    result SDWORD ?
    prompt BYTE "Enter a number: ",0
    msg BYTE "Result: ",0

.code
main PROC
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov num1, ax

    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov num2, ax

    movsx eax, num1
    movsx ebx, num2
    imul eax, ebx

    mov result, eax
    call CRLF
    mov edx, OFFSET msg
    call WriteString
    mov eax, result
    call WriteInt

    exit
main ENDP
END main
