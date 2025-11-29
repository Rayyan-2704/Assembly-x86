; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JA & JB Example
!
INCLUDE Irvine32.inc

.data
    val1 DWORD 5000
    val2 DWORD 6000

    msg1 BYTE "val1 is greater", 0
    msg2 BYTE "val2 is greater", 0

.code
main PROC
    mov eax, val1
    mov ebx, val2

    cmp eax, ebx
    ja valone
    jb valtwo

valone:
    mov edx, OFFSET msg1
    jmp display

valtwo:
    mov edx, OFFSET msg2

display:
    call WriteString
    call Crlf
    exit
main ENDP
END main
