; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JS & JNS Example
!
INCLUDE Irvine32.inc

.data
    val1 BYTE 125
    msg1 BYTE "Signed found", 0
    msg2 BYTE "Not Signed", 0

.code
main PROC
    mov al, val1
    sub al, 126
    js Signed
    jns notSigned

Signed:
    mov edx, OFFSET msg1
    jmp display

notSigned:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
