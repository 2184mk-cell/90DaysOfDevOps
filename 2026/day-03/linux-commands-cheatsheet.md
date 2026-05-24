# Day 03 – Linux Commands Cheat Sheet

## 1. System Monitoring & Performance

| Command | Usage |
|---|---|
| `top` | Monitor real-time CPU and memory usage |
| `htop` | Interactive system monitoring |
| `free -m` | Check memory usage |
| `vmstat 1` | Monitor CPU, memory, and processes |
| `iostat -x 1` | Check disk I/O performance |
| `sar -u 1 5` | Monitor CPU utilization history |
| `uptime` | Check server uptime and load average |
| `hostnamectl` | Show system hostname details |

---

## 2. Process Management

| Command | Usage |
|---|---|
| `ps -ef` | List running processes |
| `kill <PID>` | Stop process using PID |
| `kill -9 <PID>` | Force kill process |
| `pkill <name>` | Kill process by name |
| `jobs` | Show background jobs |
| `bg` | Run stopped job in background |
| `fg` | Bring background job to foreground |

---

## 3. File System & Disk Management

| Command | Usage |
|---|---|
| `df -h` | Check disk space usage |
| `du -sh *` | Find large files/directories |
| `find / -name file.txt` | Search files in Linux |
| `ls -la` | List files with permissions |
| `pwd` | Show current directory |
| `mkdir <dir>` | Create new directory |
| `rm -rf <dir>` | Remove files/directories |

---

## 4. File Permissions & Ownership

| Command | Usage |
|---|---|
| `chmod 755 file.sh` | Change file permissions |
| `chown user:user file.txt` | Change file ownership |

---

## 5. Networking Troubleshooting

| Command | Usage |
|---|---|
| `ip addr show` | Display IP addresses |
| `ping google.com` | Test network connectivity |
| `traceroute google.com` | Trace network path |
| `curl -I https://example.com` | Check website response headers |
| `wget <url>` | Download files from internet |
| `netstat -tulnp` | Check listening ports |
| `ss -tulnp` | View active network connections |
| `lsof -i :80` | Check process using a port |

---

## 6. Service & Log Management

| Command | Usage |
|---|---|
| `systemctl status nginx` | Check service status |
| `systemctl restart nginx` | Restart service |
| `journalctl -xe` | View system logs |
| `tail -f /var/log/messages` | Monitor logs in real time |
| `grep "error" logfile` | Search logs for errors |

---

## 7. Remote Access & File Transfer

| Command | Usage |
|---|---|
| `ssh user@server` | Connect remote Linux server |
| `scp file.txt user@server:/tmp` | Copy files remotely |

---

## 8. Job Scheduling & Automation

| Command | Usage |
|---|---|
| `crontab -e` | Schedule cron jobs |
| `history` | View previously executed commands |

---

# Key Takeaway

These Linux commands are essential for:

- Troubleshooting production servers
- Monitoring performance
- Debugging network issues
- Managing services and logs
- Automating system tasks

