Comiling big programs on embedded platforms (ARM, Risc-V) is often challenging, because these platforms are often quite slow & lacks memory (by todays standards).

So Cross compilation is often the best way to produce binaries efficiently. 

This Dockerfile is here to provide an up-to-date and efficient cross compilation docker container for ARMv7, on a X86_64 machine.


Note : In General, cross compiling involve installing a cross compiler on your (native X86_64)  host. It works for simple projects, But this can quickly become tricky.
(Headers problems, library problems, linker problems...)


So we'll do the other way around. The first step is to start from a standard native ARMv7 debian Image. This image is unable to run on a standard X86_64.
The first trick is to copy inside this container qemu-static arm, and then configure the system to use qemu to INTERPRET ARM binary.

At this point, a complete ARM docker container is running inside a X86_64 host. It works completely, you can natively compile all you want, but it is damn slow.

The second trick is to use ccache , and replace the native ARM compiler by the native X86-cross compiler counterparts. 
This way, the compilation process is natively running, full speed (X86_64 instruction set)


