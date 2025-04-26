.model small
.stack 100h
.data
    nameMsg db "Name: Khairul Hasan Rakib", 0Dh,0Ah, "$"
    rollMsg db "Roll: 50", 0Dh,0Ah, "$"
    batchMsg db "Batch: 78(B)", 0Dh,0Ah, "$"
.code
main:
    mov ax, @data
    mov ds, ax

    lea dx, nameMsg
    mov ah, 09h
    int 21h

    lea dx, rollMsg
    mov ah, 09h
    int 21h

    lea dx, batchMsg
    mov ah, 09h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
end main
