初始化

```bash
git config --global user.name "username"
git config --global user.email "youremail@example.com"
```

关联远程库

```bash
#
git remote add origin "https://github.com/HiroMuraki/g1_urp"
#
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
```
