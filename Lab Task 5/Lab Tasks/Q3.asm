; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 03: Declare an array variable, array1 with type WORD and initialize it with: 45, 32, 71, 44, 92. 
	Declare another array, array2 with the same data type as before. This array should hold the sorted 
	elements in ascending order from the first array. The elements are to be sorted manually. Output the sorted array using loop. 
!

INCLUDE Irvine32.inc

.data
	array1 WORD 45, 32, 71, 44, 92
	array2 WORD 32, 44, 45, 71, 92

.code
main PROC
	mov ecx, LENGTHOF array2
	mov esi, OFFSET array2

	print_array:
		movzx eax, WORD PTR [esi]
		call WriteDec
		call CRLF
		add esi, TYPE array2
		loop print_array

	exit
main ENDP
END main
