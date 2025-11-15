; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 03
!

INCLUDE Irvine32.inc

.data
    count = 10
    arr WORD count DUP(0)

.code
main PROC
    push OFFSET arr
    push count

    call ArrayFill

    mov ecx, count
    mov esi, 0
L3:
    movzx eax, arr[esi]
    add   esi, TYPE WORD
    call  WriteInt
    call  CRLF
    loop  L3

    exit
main ENDP

ArrayFill PROC
    push ebp
    mov ebp, esp
    pushad

    mov ecx, [ebp+8]
    mov esi, [ebp+12]

    call Randomize
    cmp ecx, 0
    je  L2

L1:
    mov  eax, 100h
    call RandomRange
    mov  [esi], ax
    add  esi, TYPE WORD
    loop L1

L2:
    popad
    pop  ebp
    ret  8
ArrayFill ENDP

END main
