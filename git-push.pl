#!/usr/bin/perl
#Desc 推送至github
#Auth zongf
#Date 2019-08-06

use warnings;

#################### 主程序  ####################
$usr='';
$pwd='';

# 图片下载路径
$url='![](https://raw.githubusercontent.com/zongf0504/blog-images/master/images/xxx.png)';

#设置默认命令
$expect = "expect";

#拼接命令
$cmd = "$expect -c 'spawn git push origin master\n"
      ."expect {\n"
      .'*Username* { send ' . $usr . '\r; exp_continue }' . "\n"
      .'*Password* { send ' . $pwd . '\r; exp_continue }' . "\n"
      ."}\n"
      ."exit\n"
      ."'";

# 执行命令
exec "$cmd && echo '$url'";

