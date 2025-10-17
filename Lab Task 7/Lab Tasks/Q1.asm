; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Q1 Write an Assembly program that stores three 8-bit values in registers. Use
    AND, OR, and XOR instructions to clear all odd bits, set all even bits, and then
    toggle all bits. Finally, use the TEST instruction to check whether bit 0 is set in
    the final result and display "Bit 0 is ON" or "Bit 0 is OFF" using conditional jumps.
!

INCLUDE Irvine32.inc

.data
    msg1  BYTE "Bit 0 is ON", 0
    msg2 BYTE "Bit 0 is OFF", 0

.code
main PROC
    mov al, 10101010b
    mov bl, 11001100b
    mov cl, 11110000b

    and al, 10101010b
    and bl, 10101010b
    and cl, 10101010b

    or al, 01010101b
    or bl, 01010101b
    or cl, 01010101b

    xor al, 11111111b
    xor bl, 11111111b
    xor cl, 11111111b

    test al, 00000001b
    jz bitoff

    mov edx, OFFSET msg1
    jmp display

bitoff:
    mov edx, OFFSET msg2

display:
    call WriteString
    call Crlf
    exit
main ENDP
END main
