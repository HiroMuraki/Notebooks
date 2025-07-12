```bash
sudo add-apt-repository multiverse

sudo dpkg --add-architecture i386

sudo apt update

sudo apt install steamcmd
```

## 游戏建服注意事项

### L4D2

使用 frp 时，frpc.toml 中的 localIp 不要填 127.0.0.1，应该填局域网 ip（通常是 hostname -I 的第一个）

### CS1.6/CSCZ

若遇到/home/$user/.steam/sdk32/steamclient.so 加载错误，使用如下命令：

```bash
ln -s /home/$user/.steam/steam/steamcmd/linux32/steamclient.so /home/$user/.steam/sdk32/
```
