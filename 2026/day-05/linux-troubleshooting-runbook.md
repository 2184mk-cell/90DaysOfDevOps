# Linux Troubleshooting Runbook

## Target Service / Process
Service: Docker

Purpose:
Inspect Docker daemon health, container runtime status, logs, network ports, and system resource utilization.

---

# 1. Environment Basics

## Command 1
```bash
uname -a

### Command 2
```bash
cat /etc/os-release
```
---

# 2. Filesystem Sanity Checks

## Command 3
```bash
mkdir /tmp/runbook-demo
```

## Command 4
```bash
cp /etc/hosts /tmp/runbook-demo/hosts-copy

ls -l /tmp/runbook-demo
```

# 3. CPU & Memory Snapshot

## Command 5
```bash
top

----

## Command 6
```bash
free -h
```

. ps -o pid,pcpu,pmem,comm -p <PID>

Checked CPU and memory utilization using process-specific monitoring.

----

# 4. Disk & IO Snapshot

## Command 7
```bash
df -h
```
---

## Command 8
```bash
du -sh /var/lib/docker
```

### Why are we running this?
To check Docker storage consumption.

---

# 5. Network Snapshot

## Command 9
```bash
ss -tulpn
```

### Why are we running this?
To inspect:
- listening ports
- active connections
- processes using network ports

---

# 6. Logs Reviewed

## Command 11
```bash
sudo journalctl -u docker -n 50
```

### Why are we running this?
To inspect Docker daemon logs.

---

# Conclusion

Performed a structured Linux troubleshooting drill using Docker service.

Inspected:
- CPU usage
- Memory usage
- Disk utilization
- Docker storage
- Network ports
- Docker daemon logs
- Container logs

This runbook provides a repeatable troubleshooting workflow for identifying Docker-related issues in Linux environments.

