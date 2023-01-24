# Hello World

This is a simple program that will print hello world to the console written in nasm.

**NOTE** if you prefer a virtual environment for testing this, a Docker environment is already provided. you can simply run `docker-compose up`
and enter to the nasm container shell.

How to compile Object File

```bash
nasm -f elf32 -o hello_world.o hello_world.asm
```

Make executable

```bash
ld -m elf_i386 -o hello_world hello_world.o
```