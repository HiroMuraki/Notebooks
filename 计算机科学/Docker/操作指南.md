## 基本操作

**查看本地镜像**

```bash
sudo docker images
```

**移除本地指定镜像**

通过镜像 ID 删除

```bash
docker rmi <IMAGE_ID>
```

通过镜像名与标签删除

```bash
docker rmi <REPOSITORY>:<TAG>
```
