## Commands Used

### 1. Check Current Storage
```bash
lsblk      # List all block devices and partitions
pvs        # Show existing physical volumes
vgs        # Show existing volume groups
lvs        # Show existing logical volumes
df -h      # Show mounted filesystems and their usage
```

### 2. Create Physical Volume
```bash
pvcreate /dev/nvme1n1    # Initialize /dev/nvme1n1 as a physical volume for LVM
pvs                      # Verify physical volume creation
```

### 3. Create Volume Group
```bash
vgcreate tws-vg /dev/nvme1n1   # Create a volume group named tws-vg
vgs                                # Verify volume group creation
```

### 4. Create Logical Volume
```bash
lvcreate -L 10G -n tws_lv tws_vg   # Create a logical volume named tws_lv with 10GB
lvs                                       # Verify logical volume creation
```

### 5. Format and Mount Logical Volume
```bash
mkfs.ext4 /dev/tws_vg/tws_lv               # Format LV with ext4 filesystem
mkdir -p  /mnt/tws_lv_mount                        # Create mount point
mount /dev/tws_vg/tws_lv /mnt/tws_lv_mount   # Mount LV
df -h                    # Verify mounted filesystem size and usage
```

### 6. Extend Logical Volume
```bash
lsextend -L +5G -n /dev/tws_vg/tws_lv   # Extend LV by 5GB
df -h                           # Verify updated size and usage
```


## Task 1: Check Current Storage

**Commands run:**
```bash
lsblk
pvs
vgs
lvs
df -h
```

**Observation:**
| Device       | Size | Mountpoint | Notes |
|-------------|------|------------|-------|
| /dev/nvme0n1 | 8G   | /          | Root filesystem |
| /dev/nvme1n1 | 10G  | -          | Free disk available |
| /dev/nvme2n1 | 12G  | -          | Free disk available |
| /dev/nvme3n1 | 14G  | -          | Free disk available |

- No existing physical volumes, volume groups, or logical volumes
- `/dev/root` usage: 6.9G, 27% used

✅ **Conclusion:** A free disk (`/dev/nvme1n1`) is available for LVM.

![task1](https://github.com/2184mk-cell/90DaysOfDevOps/blob/master/2026/day-13/task1.png)

---

## Task 2: Create Physical Volume

**Command:**
```bash
pvcreate /dev/nvme1n1 /dev/nvme2n1 /dev/nvme3n1
pvs
```

**Observation:**
- `/dev/nvme1n1` initialized as a physical volume
- `pvs` shows it ready for LVM

![task2](https://github.com/2184mk-cell/90DaysOfDevOps/blob/master/2026/day-13/task2.png)

---

## Task 3: Create Volume Group

**Command:**
```bash
vgcreate tws_vg /dev/nvme1n1 /dev/nvme2n1
vgs
```

**Observation:**
- Volume group `tws_vg` created with 22G free space

![task3](https://github.com/2184mk-cell/90DaysOfDevOps/blob/master/2026/day-13/task3.png)

---

## Task 4: Create Logical Volume

**Command:**
```bash
lvcreate -L 10G -n tws_lv tws_vg
lvs
```

**Observation:**
- Logical volume `tws_lv` of 500MB created under `tws-vg`

![task4](https://github.com/2184mk-cell/90DaysOfDevOps/blob/master/2026/day-13/task4.png)

---

## Task 5: Format and Mount Logical Volume

**Commands:**
```bash
mkfs.ext4 /dev/tws_vg/tws_lv
mkdir  -p /mnt/tws_lv_mount
mount /dev/tws_vg/tws_lv /mnt/tws_lv_mount
df -h 
```

**Observation:**
- LV formatted as `ext4`

![task5](https://github.com/2184mk-cell/90DaysOfDevOps/blob/master/2026/day-13/task5.png)

---

## Task 6: Extend Logical Volume

**Commands:**
```bash
lsextend -L +5G -n /dev/tws_vg/tws_lv
df -h
```

**Observation:**
- LV size increased by 5GB (total 15GB)

![task6](https://github.com/2184mk-cell/90DaysOfDevOps/blob/master/2026/day-13/task6.png)

---

## Key Learnings

1. How to initialize a physical disk for LVM (`pvcreate`)  
2. How to create a volume group (`vgcreate`) and logical volume (`lvcreate`)  
3. How to extend a logical volume of the filesystem (`lvextend` )
