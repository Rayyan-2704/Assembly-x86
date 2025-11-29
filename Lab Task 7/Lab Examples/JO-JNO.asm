; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JO & JNO Example
!
INCLUDE Irvine32.inc

.data
    val1 BYTE 127
    msg1 BYTE "Overflow found", 0
    msg2 BYTE "No Overflow", 0

.code
main PROC
    mov al, val1
    add al, 1
    jo Overflow
    jno notOverflow

Overflow:
    mov edx, OFFSET msg1
    jmp display

notOverflow:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
