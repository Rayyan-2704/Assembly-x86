; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JECXZ Example
!
INCLUDE Irvine32.inc

.data
    val1 DWORD 200
    val2 DWORD 200

    msg1 BYTE "ECX is zero", 0
    msg2 BYTE "ECX is not zero", 0

.code
main PROC
    mov ecx, val1
    sub ecx, val2

    jecxz zero
    jmp notzero

zero:
    mov edx, OFFSET msg1
    jmp display

notzero:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
