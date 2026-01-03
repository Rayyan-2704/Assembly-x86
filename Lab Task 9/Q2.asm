; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	You are developing a simple grading system for a teacher. Write an Assembly Programming
    Language program using the Irvine Library that stores the marks of students in an array and
    counts how many students passed and how many failed. A student passes if the mark is greater
    than or equal to 50.
!

INCLUDE Irvine32.inc

.data
    scores DWORD 50 DUP(?)
    passCount DWORD 0
    failCount DWORD 0
    totalStds DWORD ?
    promptNum BYTE "Enter total number of students: ",0
    promptMark BYTE "Enter marks: ",0
    msgPass BYTE "Number of students passed = ",0
    msgFail BYTE "Number of students failed = ",0

.code
main PROC
    mov edx, OFFSET promptNum
    call WriteString
    call ReadInt
    mov totalStds, eax
    mov ecx, eax
    mov esi, OFFSET scores

    mov edx, OFFSET promptMark
    call WriteString
    call CRLF
input_loop:
    call ReadInt
    mov [esi], eax
    add esi, TYPE scores
    loop input_loop

    call EvaluateResults

    mov edx, OFFSET msgPass
    call WriteString
    mov eax, passCount
    call WriteDec
    call CRLF

    mov edx, OFFSET msgFail
    call WriteString
    mov eax, failCount
    call WriteDec
    call CRLF

    exit
main ENDP

EvaluateResults PROC
    mov ecx, totalStds
    mov esi, OFFSET scores

check_next:
    mov eax,  [esi]
    cmp eax, 50
    jl mark_fail
    inc passCount
    jmp next_entry

mark_fail:
    inc failCount

next_entry:
    add esi, TYPE scores
    loop check_next

    ret
EvaluateResults ENDP

END main
