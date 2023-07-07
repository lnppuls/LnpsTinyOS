# src文件注释

## mbr启动区汇编文件
- 编译：  nasm -o mbr.bin mbr.asm 
- 创建虚拟磁盘：qemu-img create -f raw mbr.raw 1440K
- 填充第一扇区：dd if=mbr.bin of=mbr.raw bs=512 count=1
- 启动：qemu-system-i386 mbr.raw
- **结果：图形界面左上角出现hello**
## mbr启动区增加从磁盘加载到内存功能
- 从磁盘扇区加载到内存的指定区域**通过mov指令**
### LBA表示法
- **LBA = (柱面号 * 磁头数 + 磁头号) * 扇区数 + 扇区编号 - 1**
### makefile 文件的编写，规则的依赖

## 从实模式到保护模式
- 打开 A20
- 加载 gdt 
- 将 cr0 的 pe 位置 1
### **实模式与保护模式**
**8086的16位模式被称为实模式，后面32位cpu的被称为保护模式**
- 内存段的定义是什么？

