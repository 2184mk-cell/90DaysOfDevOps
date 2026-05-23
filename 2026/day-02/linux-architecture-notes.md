## Core Components of Linux

1. Kernel
- The kernel is the heart of Linux which controlls everything.
- It directly communicates with hardware.

Responsibilities:
Process management
Memory management
Device management
File systems
Networking

- Kernel is written in C to interact with it we need something i.e. SHELL

2.SHELL 
- A shell is a program that allows users to interact with the Linux operating system using commands.
- It acts as a bridge between the user and kernel.
- The shell takes your command, understands it and asks kernel to perform the action

Example
When you type: ls

The shell:
Reads the command
Finds the ls program
once found the shell asks the kernel to start program.
Program genrates output
Displays the output

3. User Space
Area where users and applications run.
Includes:
Shell (bash)
Commands (ls, ps, top)
Applications and services

4. Init / systemd
First process started by the kernel (PID 1).
Responsible for starting and managing services.

5. Processes
Every running program in Linux is a process.
Each process has:
PID (Process ID)
Parent process
Memory allocation
CPU usage

Common Process States
Running (R) → actively using CPU
Sleeping (S) → waiting for an input
Stopped (T) → paused manually or by signal
Zombie (Z) → completed but waiting for parent cleanup
Idle → not currently executing

6. Linux Commands Used Daily
Command	                            Purpose
ps aux	                        View running processes
top or htop	                    Monitor CPU & memory usage
systemctl status <service>	    Check service status
journalctl -u <service>	        View service logs
kill <PID>	                    Stop a process

# systemd
systemd is a Linux system and service manager that starts, stops, and manages system processes during boot and runtime.

# Why it matters:

- Speeds up system boot time using parallel startup
- Automatically manages and restarts services
- Handles logging, scheduling, networking, and user sessions
- Provides centralized control with commands like systemctl
- Improves system reliability and monitoring