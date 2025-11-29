; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    JZ & JNZ Example
!
INCLUDE Irvine32.inc

.data
    val1 DWORD 200
    val2 DWORD 100

    msg1 BYTE "Both are equal", 0
    msg2 BYTE "Both are not equal", 0

.code
main PROC
    mov eax, val1
    mov ebx, val2
    cmp eax, ebx
    jz Zero
    jnz notZero

Zero:
    mov edx, OFFSET msg1
    jmp display

notZero:
    mov edx, OFFSET msg2

display:
    call WriteString
    call CRLF
    exit
main ENDP
END main
