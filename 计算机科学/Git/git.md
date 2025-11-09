## 配置

**配置基本信息**

```bash
git config --global user.name "username"
git config --global user.email "youremail@example.com"
```

**配置 GitHub SSH**

打开 GitHub，进入`Settings`->`SSH and GPG Keys`->`New SSH Key`，按下表填入字段并提交

| 字段     | 值                                    |
| -------- | ------------------------------------- |
| Title    | 任填                                  |
| Key type | Authentication Key                    |
| Key      | 公钥，例如`.ssh/id_rsa.pub`的文件内容 |

使用以下命令验证与 GitHub 的 SSH 连接

```bash
ssh -T git@github.com
```

成功后应输出如下结果

> Hi xxx! You've successfully authenticated, but GitHub does not provide shell access.

**Git 配置文件管理**

Global 级配置文件路径

| OS      | 路径                         |
| ------- | ---------------------------- |
| Linux   | ~/.gitconfig                 |
| Windows | C:/Users/\<name\>/.gitconfig |

示例内容

```
[user]
        name = HiroMuraki
        email = 419734782@qq.com
[init]
        defaultBranch = main
```

## 与远程仓库协作

### 1.关联到远程库

**（a）关联到空远程存储库**

```bash
# 关联远程库
git remote add origin "https://github.com/HiroMuraki/g1_urp"

# 推送
git push
```

**（b）关联到非空远程存储库**

```bash
# 关联远程库
git remote add origin "https://github.com/HiroMuraki/g1_urp"

# 设置上游分支
git branch --set-upstream-to=origin/main main

# 处理分叉（Divergent Branches）
## 方式1：使用merge策略（保留所有提交历史）
git config pull.rebase false
git pull --no-rebase
## 方式2：使用rebase策略（重写本地提交历史）
git config pull.rebase true
git pull --rebase
## 方式3：只允许快进合并（如果存在分叉则拒绝）
git config pull.ff only
git pull --ff-only

git pull origin main --allow-unrelated-histories

# 推送
git push
```

## 其他操作

打包项目

```bash
git archive --format=zip --output=project.zip HEAD
```
