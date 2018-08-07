#!/bin/bash
# 配置目标集群ip
host=127.0.0.1
port=8123
file=$1
echo "send $file to $host:$port"
nc $host $port < $file
echo "finish send file"
