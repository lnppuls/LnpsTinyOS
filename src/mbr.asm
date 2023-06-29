org 0x7c00


; 清屏
mov ax,0x0600
mov bx,0x700
mov cx,0
mov dx,0x184f
int 0x10

; 显存写数据
mov ax,0xb800
mov gs,ax
mov byte [gs:0x00],'H'
mov byte [gs:0x02],'e'
mov byte [gs:0x04],'l'
mov byte [gs:0x06],'l'
mov byte [gs:0x08],'o'

; 启动区标识
times 510-($-$$) db 0
db 0x55,0xaa
