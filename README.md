# Bootloader With Keyboard Input (x86 Assembly)

This project demonstrates how to build a simple **bootloader from scratch** that supports **keyboard input**.  
It’s written entirely in x86 assembly and designed to run in real mode from the boot sector (512 bytes).  

You can type characters directly at the bootloader and see them written out in front of you

---

## 📺 YouTube Tutorial
Watch the full step-by-step video on YouTube where we build this bootloader together:  
👉 https://youtu.be/tgg-9I0zYxM


---

## 🚀 Next Steps: Learn Kernel Development
If you enjoyed this tutorial and want to go **much deeper** into operating system development, check out my full course:  

👉 [**Developing a Multithreaded Kernel From Scratch**](https://dragonzap.com/landing/course/developing-a-multithreaded-kernel-from-scratch?coupon=BOOTLOADERDISCOUNT)  

Use the coupon code **`BOOTLOADERDISCOUNT`** for a special discount! 🎉  

In the course, you’ll learn how to:  
- Write a **multithreaded kernel** in C and Assembly  
- Implement **process scheduling**, **memory management**, and **filesystems**  
- Build a kernel capable of **running real multitasking programs**  
- Gain practical skills in **systems programming** and **low-level debugging**

---

## 🛠️ Build & Run Instructions
1. Clone this repo  
   ```bash
   git clone https://github.com/YOURNAME/bootloader-keyboard.git
   cd bootloader-keyboard
   nasm -f bin bootloader.asm -o bootloader.bin
   qemu-system-x86_64 -fda bootloader.bin
   ```
## 📢 Stay Connected
- 🌐 [Dragon Zap Education](https://dragonzap.com)  
- 📺 [YouTube: Dragon Zap Education](https://www.youtube.com/@dragonzapeducation)  

   

