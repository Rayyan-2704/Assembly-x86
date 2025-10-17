; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Q2 Write an Assembly program that takes three numbers from the user and
    finds the largest number two times — first using unsigned comparison (JA, JB,
    JAE) and then using signed comparison (JG, JL, JGE). Display both results with
    messages like "Largest (Unsigned) = ..." and "Largest (Signed) = ...".
!

INCLUDE Irvine32.inc

.data
    num1 DWORD ?
    num2 DWORD ?
    num3 DWORD ?
    prompt1 BYTE "Enter the three numbers: ",0
    msg1 BYTE "The largest unsigned number is ",0
    msg2 BYTE "The largest signed number is ",0

.code
main PROC
    mov edx, OFFSET prompt1
    call WriteString
    call CRLF

    call ReadInt
    mov num1, eax
    call ReadInt
    mov num2, eax
    call ReadInt
    mov num3, eax

    mov eax, num1
    cmp eax, num2
    jae unsignedcheck_with_3rdvalue
    mov eax, num2

unsignedcheck_with_3rdvalue:
    cmp eax, num3
    jae print_unsigned_largest
    mov eax, num3

print_unsigned_largest:
    mov edx, OFFSET msg1
    call WriteString
    call WriteHexw
    call CRLF

    mov eax, num1
    cmp eax, num2
    jge signedcheck_with_3rdvalue
    mov eax, num2

signedcheck_with_3rdvalue:
    cmp eax, num3
    jge print_signed_largest
    mov eax, num3

print_signed_largest:
    mov edx, OFFSET msg2
    call WriteString
    call WriteInt
    call CRLF

    exit
main ENDP
END main
