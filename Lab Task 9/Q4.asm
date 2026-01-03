; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	You are designing a simple encryption system for securing small 8-bit data values.
    Write a program using the Irvine Library that takes an 8-bit binary value as input and “encrypts”
    it by performing the following operations:
    1. Rotate the bits of the value to the left twice using the ROL instruction.
    2. Shift the rotated result to the right once using the SHR instruction to simulate bit
    masking.
    3. Display the final “encrypted” result.
!

INCLUDE Irvine32.inc

.data
    msgInput BYTE "Enter original number: ",0
    msgOutput BYTE "Encrypted (binary) value: ",0

.code
main PROC
    mov edx, OFFSET msgInput
    call WriteString
    call ReadInt

    mov bl, al
    rol bl, 2
    shr bl, 1

    mov edx, OFFSET msgOutput
    call WriteString
    movzx eax, bl
    call WriteBin
    call CRLF

    exit
main ENDP
END main
