## 安装 NVIDIA Container Toolkit

在宿主机安装 NVIDIA Container Toolkit

**Apt**

```bash
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey \
    | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -fsSL https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list \
    | sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' \
    | sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
```

**Yum/Dnf**

```bash
curl -fsSL https://nvidia.github.io/libnvidia-container/stable/rpm/nvidia-container-toolkit.repo \
    | sudo tee /etc/yum.repos.d/nvidia-container-toolkit.repo
sudo yum install -y nvidia-container-toolkit
```

## 创建文件

```bash
mkdir ollama && cd ollama
```

目录文件结构如下

```
ollama
├── Dockerfile
└── docker-compose.yml
```

**Dockerfile**

```dockerfile
FROM ollama/ollama:latest

VOLUME ["/app/game"]
```

**docker-compose.yml**

```yml
name: ollama-service

services:
    ollama-main:
        build: .
        container_name: ollama-service-main
        volumes:
            - type: bind
              source: ${USER_LOCAL_SHARE}/ollama
              target: /root/.ollama
              read_only: false
        ports:
            - "11434:11434/tcp"
        restart: unless-stopped
        runtime: nvidia
```

## 启动服务

```bash
docker compose up --build
```
