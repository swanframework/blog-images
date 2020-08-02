#!/usr/bin/env bash
#Desc 移动截图文件夹中最新的.png截图至指定目录中，命名规则为: 目录名-yyyyMMddHHmm.png
#Auth zongf
#Date 2020-08-02

# 目标目录
target_dir=mybatis

# 定义截图目录
pic_dir=${HOME}/Pictures

# 获取目录下最新的图片名
latest_img_name=`ls -lt $pic_dir | grep .png | head  -n 1 | awk '{print $9}'`

#以当前时间命名
new_img_name=$target_dir-`date "+%Y%m%d%H%M"`.png

# 移动截图至新的文件夹
cp $pic_dir/$latest_img_name $target_dir/$new_img_name

# 拼接git链接地址
img_git_link="![image](https://raw.githubusercontent.com/zongf0504/blog-images/master/images/$target_dir/$new_img_name)"

# 输出git连接地址
echo $img_git_link
