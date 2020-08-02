#!/usr/bin/env bash
#Desc 移动截图
#Auth zongf
#Date 2020-08-02


# 定义截图目录
picDir=${HOME}/Pictures
targetDir=./mybatis

# 获取目录下最新的图片名
latestImg=`ls -lt $picDir | grep .png | head  -n 1 | awk '{print $9}'`

#以当前时间命名
newName=`date "+%Y%m%d%H%M%S"`.png

# 移动截图至新的文件夹
mv $picDir/$latestImg $targetDir/$newName