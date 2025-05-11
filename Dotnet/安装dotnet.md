```bash
# https://dotnet.microsoft.com/zh-cn/download

wget https://builds.dotnet.microsoft.com/dotnet/Sdk/9.0.203/dotnet-sdk-9.0.203-linux-x64.tar.gz

mkdir -p "$HOME/local/dotnet/9"

tar zxf dotnet-sdk-*-linux-*.tar.gz -C "$HOME/local/dotnet/9"

export DOTNET_ROOT=$HOME/local/dotnet/9
export PATH=$HOME/dotnet:$PATH
```
