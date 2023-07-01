mbr.bin: 
	nasm  -o ./out/mbr.bin ./src/mbr.asm
	nasm  -o ./out/loader.bin ./src/loader.asm
os.raw:
	qemu-img create -f raw ./target/os.raw 1440K
	dd if=./out/mbr.bin of=./target/os.raw bs=512 count=1
	dd if=./out/loader.bin of=./target/os.raw bs=512 count=4 seek=2

begin:
	sudo apt install nasm

run:
	make -r mbr.bin
	make -r os.raw
	
clean:
	rm -rf target/*
	rm -rf ../out/*