; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    5. Create a procedure that Loads an array of integer by multiplying it with Load(offset array, byte no)
!

INCLUDE Irvine32.inc

.data
    arr DWORD 1,2,3,4,5,6,7,8,9,10
    counter DWORD 10
    multiplier DWORD 10
    msg1 BYTE "Original Array: ",0
    msg2 BYTE "Loaded Array: ",0
    space BYTE " ",0

.code
LoadArray PROTO arr_Addr : PTR BYTE, count : DWORD, multip : DWORD

main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov esi, OFFSET arr
    mov ecx, counter
L1:
    mov eax, [esi]
    call WriteInt
    mov edx, OFFSET space
    call WriteString
    add esi, TYPE arr
    loop L1

    INVOKE LoadArray, OFFSET arr, counter, multiplier

    call CRLF
    call CRLF
    mov edx, OFFSET msg2
    call WriteString

    mov esi, OFFSET arr
    mov ecx, counter
L2:
    mov eax, [esi]
    call WriteInt
    mov edx, OFFSET space
    call WriteString
    add esi, TYPE arr
    loop L2

    exit
main ENDP

LoadArray PROC arr_Addr : PTR BYTE, count : DWORD, multip : DWORD
    mov esi, arr_Addr
    mov ecx, count
    mov ebx, multip

load_loop:
    mov eax, [esi]
    mul ebx
    mov [esi], eax
    add esi, 4
    loop load_loop

    ret
LoadArray ENDP

END main
