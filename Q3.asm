.model small
.stack 100h
.data
    msg1 db "Enter first digit: $"
    msg2 db 0Dh,0Ah,"Enter second digit: $"
    msg3 db 0Dh,0Ah,"After swapping: $"
.code
main:
    mov ax, @data
    mov ds, ax

    ; Input first digit
    lea dx, msg1
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov bl, al     ; Store first digit

    ; Input second digit
    lea dx, msg2
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov bh, al     ; Store second digit

    ; Swap
    xchg bl, bh

    ; Display swapped result
    lea dx, msg3
    mov ah, 09h
    int 21h

    ; Display first digit after swap
    mov dl, bl
    mov ah, 02h
    int 21h

    ; Display second digit after swap
    mov dl, bh
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
end main
