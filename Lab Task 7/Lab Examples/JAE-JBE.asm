; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JAE & JBE Example
!
INCLUDE Irvine32.inc

.data
    val1 DWORD 600
    val2 DWORD 1900

    msg1 BYTE "val1 is greater or equal to val2", 0
    msg2 BYTE "val2 is greater or equal to val1", 0

.code
main PROC
    mov eax, val1
    mov ebx, val2

    cmp eax, ebx
    jae valone
    jbe valtwo

valone:
    mov edx, OFFSET msg1
    jmp display

valtwo:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
