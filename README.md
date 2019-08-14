# Manjaro-configure-cn
一个帮助大陆用户配置Manjaro Linux18的脚本，让你体会到什么叫一把梭（手动滑稽）

用法：  
1.wget https://github.com/Alexander-Huang/Manjaro-configure-cn/archive/master.zip  
2.unzip master.zip  
3.sudo sh ~/Manjaro-configure-cn-master/autoconfig.sh  

酷安id：Alexande，PYPY！  
相关文章：  
https://github.com/Bit0r/CSAPP 安装manjaro教程

#后记
我发现把/etc/pacman.d/mirrorlist文件直接改成Arch的镜像源（见https://mirrors.tuna.tsinghua.edu.cn/help/archlinux/），执行sudo pacman -Syyu --force后manjaro会变成Arch🤔，大家可以试试这个操作，当然不保证不出问题（我并没有把这个操作添加到此脚本中）
