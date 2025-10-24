; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Question 4: Write a program in Assembly language using the Irvine32 library that takes a word from the
	user and counts how many vowels and consonants it contains. Display the counts.
!

INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter a word: ",0
	input BYTE 20 DUP(?)
	vowels DWORD 0
	consonants DWORD 0
	msg1 BYTE "Vowels: ",0
	msg2 BYTE "Consonants: ",0

.code
main PROC
	mov edx, OFFSET prompt
	call WriteString
	mov edx, OFFSET input
	mov ecx, LENGTHOF input
	call ReadString

	mov ecx, eax	; eax contains the number of characters read using ReadString
	mov esi, OFFSET input
L1:
	cmp BYTE PTR [esi], 'a'
	je VowelFound
	cmp BYTE PTR [esi], 'A'
	je VowelFound
	cmp BYTE PTR [esi], 'e'
	je VowelFound
	cmp BYTE PTR [esi], 'E'
	je VowelFound
	cmp BYTE PTR [esi], 'i'
	je VowelFound
	cmp BYTE PTR [esi], 'I'
	je VowelFound
	cmp BYTE PTR [esi], 'o'
	je VowelFound
	cmp BYTE PTR [esi], 'O'
	je VowelFound
	cmp BYTE PTR [esi], 'u'
	je VowelFound
	cmp BYTE PTR [esi], 'U'
	je VowelFound

	inc consonants
	jmp next

VowelFound:
	inc vowels

next:
	inc esi
	loop L1

	call CRLF
	call CRLF
	mov edx, OFFSET msg1
	call WriteString
	mov eax, vowels
	call WriteDec

	call CRLF
	mov edx, OFFSET msg2
	call WriteString
	mov eax, consonants
	call WriteDec

	exit
main ENDP
END main
