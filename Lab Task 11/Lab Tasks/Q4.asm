; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    4. Create a Str_Reverse procedure to reverse strings.
!

INCLUDE Irvine32.inc

.data
    prompt BYTE "Enter a string: ",0
    str1 BYTE 20 DUP(?)
    str2 BYTE 20 DUP(?)
    len DWORD ?
    counter DWORD 20
    msg1 BYTE "Original String: ",0
    msg2 BYTE "Reversed String: ",0


.code
Str_Reverse PROTO str1_Addr : PTR BYTE, str2_Addr : PTR BYTE, count : DWORD

main PROC
    mov edx, OFFSET prompt
    call WriteString
    mov ecx, counter
    mov edx, OFFSET str1
    call ReadString
    mov len, eax


    INVOKE Str_Reverse, OFFSET str1, OFFSET str2, len

    call CRLF
    call CRLF
    mov edx, OFFSET msg1
    call WriteString
    mov edx, OFFSET str1
    call WriteString
    call CRLF

    mov edx, OFFSET msg2
    call WriteString
    mov edx, OFFSET str2
    call WriteString
    call CRLF

    exit
main ENDP

Str_Reverse PROC str1_Addr : PTR BYTE, str2_Addr : PTR BYTE, count : DWORD
    mov esi, str2_Addr
    mov edi, str1_Addr
    mov ecx, count
    add edi, ecx
    dec edi

L1:
    mov al, [edi]
    mov [esi], al
    inc esi
    dec edi
    loop L1

    mov BYTE PTR [esi], 0

    ret
Str_Reverse ENDP

END main
