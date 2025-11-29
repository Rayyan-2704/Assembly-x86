; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JP & JNP Example
!
INCLUDE Irvine32.inc

.data
    val1 BYTE 11101111b
    msg1 BYTE "Even Numbers of 1's", 0
    msg2 BYTE "Odd Numbers of 1's", 0

.code
main PROC
    mov al, val1
    test al, al
    jp Parity
    jnp notParity

Parity:
    mov edx, OFFSET msg1
    jmp display

notParity:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
