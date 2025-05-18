#!/bin/bash

# https://www.mongodb.com/

# 安装mongodb
mkdir -p "$HOME/local/mongodb"
tar xf $File -C "$HOME/local/mongodb"
export PATH=$USER_LOCAL/mongodb/bin:$PATH

# 安装mongosh
mkdir -p "$HOME/local/mongosh"
tar xf $File -C "$HOME/local/mongosh"
export PATH=$USER_LOCAL/mongosh/bin:$PATH
