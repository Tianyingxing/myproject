#!/bin/bash
file=$1
host=0.0.0.0
port=8123
echo "listen on $port"
echo "start recive file and write to $file"
#nc -l 0.0.0.0 8123 > TempFile
nc -l $host $port > $1
echo "end"
