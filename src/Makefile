mbr.bin: mbr.asm 
	nasm -I include/ -o ../out/mbr.bin mbr.asm -l ../out/mbr.lst
	nasm -I include/ -o ../out/loader.bin loader.asm -l ../out/loader.lst

os.raw: mbr.bin loader.bin
	../bochs/bin/bximage -hd -mode="flat" -size=60 -q target/os.raw
	dd if=../out/mbr.bin of=target/os.raw bs=512 count=1
	dd if=../out/loader.bin of=target/os.raw bs=512 count=4 seek=2

brun:
	make install
	make only-bochs-run
	
only-bochs-run:
	../bochs/bin/bochs -f ../bochs/bochsrc.disk -q
	
install:
	make clean
	make -r os.raw
	
clean:
	rm -rf target/*
	rm -rf ../out/*