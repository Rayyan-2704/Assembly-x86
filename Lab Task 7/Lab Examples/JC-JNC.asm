; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JC & JNC Example
!
INCLUDE Irvine32.inc

.data
    val1 WORD 0FFFFh
    msg1 BYTE "Carry Found", 0
    msg2 BYTE "No Carry", 0

.code
main PROC
    mov ax, val1
    add ax, 1
    jc Carry
    jnc notCarry

Carry:
    mov edx, OFFSET msg1
    jmp display

notCarry:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
