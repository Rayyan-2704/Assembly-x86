; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JE & JNE Example
!
INCLUDE Irvine32.inc

.data
    val1 DWORD 200
    val2 DWORD 400

    msg1 BYTE "Both numbers are equal", 0
    msg2 BYTE "Both numbers are not equal", 0

.code
main PROC
    mov eax, val1
    mov ebx, val2

    cmp eax, ebx
    je Equal
    jne notEqual

Equal:
    mov edx, OFFSET msg1
    jmp display

notEqual:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
