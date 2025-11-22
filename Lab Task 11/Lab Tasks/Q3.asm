; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    3. Create IsCompare procedure to compare two strings.
!

INCLUDE Irvine32.inc

.data
    str1 BYTE "Hello",0
    str2 BYTE "Hi",0
    msg1 BYTE "str1 is greater than str2",0
    msg2 BYTE "str1 is equal to str2",0
    msg3 BYTE "str1 is lesser than str2",0

.code
IsCompare PROTO str1_Addr : PTR BYTE, str2_Addr : PTR BYTE

main PROC
    INVOKE IsCompare, OFFSET str1, OFFSET str2

    cmp eax, 1
    je is_greater

    cmp eax, 0
    je is_equal

    mov edx, OFFSET msg3
    jmp print_msg

is_greater:
    mov edx, OFFSET msg1
    jmp print_msg

is_equal:
    mov edx, OFFSET msg2
    jmp print_msg

print_msg:
    call WriteString
    call CRLF
    exit
main ENDP

IsCompare PROC str1_Addr : PTR BYTE, str2_Addr : PTR BYTE
    mov esi, str1_Addr
    mov edi, str2_Addr

L1:
    mov al, [esi]
    cmp al, [edi]
    ja greater
    jb lesser

    cmp al, 0
    je equal

    inc esi
    inc edi
    jmp L1

greater:
    mov eax, 1
    jmp return

lesser:
    mov eax, -1
    jmp return

equal:
    mov eax, 0

return:
    ret
IsCompare ENDP

END main
