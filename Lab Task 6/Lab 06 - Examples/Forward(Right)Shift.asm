; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Rotate a 32-bit integer array forward by one position.
    Example:
        [50, 60, 70, 80] --> [80, 50, 60, 70]
!

INCLUDE Irvine32.inc

.data
array DWORD 50, 60, 70, 80
s = LENGTHOF array

msgBefore BYTE "Original array: ", 0
msgAfter  BYTE "Rotated array: ", 0

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

    ; ----- Rotate Array Forward -----
    mov ecx, s - 1
    mov esi, OFFSET array
    mov ebx, [esi]
    add esi, TYPE array

    rotate_loop:
        xchg [esi], ebx
        add esi, TYPE array
    loop rotate_loop

    mov esi, OFFSET array
    mov [esi], ebx             ; place last element at the front

    ; ----- Display Rotated Array -----
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
