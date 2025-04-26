.model small
.stack 100h
.data
    msg1 db "Enter first digit: $"
    msg2 db 0Dh,0Ah,"Enter second digit: $"
    msg3 db 0Dh,0Ah,"Sum is: $"
.code
main:
    mov ax, @data
    mov ds, ax

    ; Ask for first digit
    lea dx, msg1
    mov ah, 09h
    int 21h

    ; Read first digit
    mov ah, 01h
    int 21h
    sub al, '0'   ; Convert ASCII to number
    mov bl, al    ; Store first number in BL

    ; Ask for second digit
    lea dx, msg2
    mov ah, 09h
    int 21h

    ; Read second digit
    mov ah, 01h
    int 21h
    sub al, '0'   ; Convert ASCII to number
    add bl, al    ; Add the numbers

    ; Display result
    lea dx, msg3
    mov ah, 09h
    int 21h

    mov al, bl
    add al, '0'   ; Convert back to ASCII
    mov dl, al
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
end main
