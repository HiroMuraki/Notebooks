## 1.准备环境

**清理潜在冲突包**

```bash
sudo apt remove docker.io
sudo apt remove docker-doc
sudo apt remove docker-compose
sudo apt remove docker-compose-v2
sudo apt remove podman-docker
sudo apt remove containerd
sudo apt remove runc
```

**配置 Docker 仓库**

添加 Docker 的官方 GPG 秘钥

```bash
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

将仓库添加到 APT 源

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
```

## 2.安装 Docker

```bash
sudo apt install docker-ce
sudo apt install docker-ce-cli
sudo apt install containerd.io
sudo apt install docker-buildx-plugin
sudo apt install docker-compose-plugin
```

安装后 Docker 服务会自动运行

## 3.验证 Docker 运行状态

检查 Docker 服务状态

```bash
sudo systemctl status docker
```

运行测试用例

```bash
sudo docker run hello-world
```

成功后输出如下

```
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```
