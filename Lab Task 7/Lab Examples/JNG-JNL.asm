; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JNL & JNG Example
!
INCLUDE Irvine32.inc

.data
    A DWORD 50
    B DWORD 50

    msgGreaterEqual BYTE "A >= B", 0
    msgLesserEqual  BYTE "A <= B", 0

.code
main PROC
    mov eax, A
    mov ebx, B

    cmp eax, ebx
    jnl greaterEqual
    jng lesserEqual

greaterEqual:
    mov edx, OFFSET msgGreaterEqual
    jmp display

lesserEqual:
    mov edx, OFFSET msgLesserEqual

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
