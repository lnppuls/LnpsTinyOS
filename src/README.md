# src文件注释

## mbr启动区汇编文件
- 编译：  nasm -o mbr.bin mbr.asm 
- 创建虚拟磁盘：qemu-img create -f raw mbr.raw 1440K
- 填充第一扇区：dd if=mbr.bin of=mbr.raw bs=512 count=1
- 启动：qemu-system-i386 mbr.raw
- **结果：图形界面左上角出现hello**