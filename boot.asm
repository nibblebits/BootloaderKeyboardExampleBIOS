BITS 16
ORG 0x7c00 

start:
    cli 
    xor ax, ax
    mov ds, ax
    ; label = (DS * 16) + offset.
    ; 0 * 16 = 0 + 0x7c00 + relative_offset
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00
    sti 

    mov si, welcome
    call print 
    call getkey
    jmp $

getkey:
    pusha
.gk_loop:
    xor ah, ah ; SET AH = 0
    int 0x16   ; Ask BIOS for next key
    ; AL = keypressed
    mov ah, 0x0E   ; Print character routine
    int 0x10
    jmp .gk_loop
    
    popa
    ret
print:
    pusha
.p: ; LOOP 
    lodsb ; AL = *SI; SI++;
    ; If null terminator is found then leave
    test al, al  ; Check if AL is zero
    jz .done

    mov ah, 0x0E  ; Print character command
    int 0x10      ; Invoke bios.
    jmp .p

.done:   
    popa
    ret
welcome: db "I am the start of something great, the best OS in the world", 0x0A, 0x00

times 510-($-$$) db 0 ; Make my bootloader binary 510 bytes
dw 0xAA55             ; Boot signature 
