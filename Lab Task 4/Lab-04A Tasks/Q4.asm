; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 4: A shop has 50 items. A customer buys 7, and later the shopkeeper restocks 15. Use SUB
	and ADD to update inventory.
!

INCLUDE Irvine32.inc

.data
	items DWORD 50
	sold DWORD 7
	restocked DWORD 15

.code
main PROC
	mov eax, items
	sub eax, sold
	add eax, restocked

	mov items, eax
	call WriteInt

	exit
main ENDP
END main
