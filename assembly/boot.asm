mov ah, 0eh ; Switch to teletype mode (tty)
mov al, 'I'
int 10h
mov al, 't'
int 10h
mov al, 27h
int 10h
mov al, 's'
int 10h
mov al, ' '
int 10h
mov al, 'W'
int 10h
mov al, 'o'
int 10h
mov al, 'r'
int 10h
mov al, 'k'
int 10h
mov al, 'i'
int 10h
mov al, 'n'
int 10h
mov al, 'g'
int 10h

jmp $ ; Jump to the current address

times 510-($-$$) db 0 ; There's 3 bytes before this, so 3 + (510 - 3) + 2 bytes after for 512 total

dw 0xaa55 