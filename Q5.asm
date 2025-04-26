.model small
.stack 100h
.data
    prompt db "Enter an Uppercase Letter: $"
    result db 0Dh,0Ah,"Lowercase Letter: $"
.code
main:
    mov ax, @data
    mov ds, ax

    ; Prompt user
    lea dx, prompt
    mov ah, 09h
    int 21h

    ; Read uppercase letter
    mov ah, 01h
    int 21h
    mov bl, al

    ; Convert to lowercase
    add bl, 20h    ; ASCII difference between uppercase and lowercase

    ; Display result
    lea dx, result
    mov ah, 09h
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
end main
