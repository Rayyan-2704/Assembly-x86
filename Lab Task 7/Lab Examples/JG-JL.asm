; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JG & JL Example
!
INCLUDE Irvine32.inc

.data
    A DWORD 10
    B DWORD 20

    msgGreater BYTE "A > B", 0
    msgLesser  BYTE "A < B", 0

.code
main PROC
    mov eax, A
    mov ebx, B

    cmp eax, ebx
    jg greaterLabel
    jl lesserLabel

greaterLabel:
    mov edx, OFFSET msgGreater
    jmp display

lesserLabel:
    mov edx, OFFSET msgLesser

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
