## Title

User Creation Runbook

## Purpose

This runbook explains how to create a new user in Linux, assign permissions, set passwords, and verify access.

## Prerequisites
- Root or sudo access
- Linux server access via SSH
- Knowledge of required user groups

# Steps to Create User
1. Login to Server

   ssh admin@server-ip

2. Check Existing Users

   cat /etc/passwd

3. Create New User

   sudo useradd username
   like sudo useradd mahesh

4. Create Home Directory

   sudo useradd -m mahesh

5. Set Password

   sudo passwd mahesh

6. Add User to Sudo Group

   sudo usermod -aG sudo mahesh

7. Verify User Creation

   id mahesh