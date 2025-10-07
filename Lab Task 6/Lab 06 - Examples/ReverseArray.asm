; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Reverse a 32-bit integer array.
    Example:
        [50, 60, 70, 80] --> [80, 70, 60, 50]
!

INCLUDE Irvine32.inc

.data
array DWORD 50, 60, 70, 80
s = LENGTHOF array

msgBefore BYTE "Original array: ", 0
msgAfter  BYTE "Reversed array: ", 0

.code
main PROC
    ; ----- Display Original Array -----
    mov edx, OFFSET msgBefore
    call WriteString
    call CRLF

    mov ecx, s
    mov esi, OFFSET array
    
    display_before:
        mov eax, [esi]
        call WriteDec
        call Crlf
        add esi, TYPE array
    loop display_before

    ; ----- Reverse Array -----
    mov ecx, s
    shr ecx, 1
    mov esi, OFFSET array
    mov edi, OFFSET array + (s - 1) * TYPE array

    reverse_array:
        mov eax, [edi]
        xchg [esi], eax
        mov [edi], eax
        add esi, TYPE array
        sub edi, TYPE array
    loop reverse_array

    ; ----- Display Reversed Array -----
    call CRLF
    mov edx, OFFSET msgAfter
    call WriteString
    call CRLF

    mov ecx, s
    mov esi, OFFSET array
    display_after:
        mov eax, [esi]
        call WriteDec
        call CRLF
        add esi, TYPE array
    loop display_after

    exit
main ENDP
END main
