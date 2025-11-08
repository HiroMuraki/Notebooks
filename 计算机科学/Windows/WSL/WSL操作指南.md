## 进阶操作

**压缩 WSL 磁盘**
运行 diskpart

```bash
diskpart
```

在 diskpart 中执行如下命令

```bash
SELECT VDISK FILE="path/to/wsl/vdisk/ext4.vhdx"

COMPACT VDISK

DEATCH VDISK

EXIT
```
