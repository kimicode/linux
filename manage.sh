#!/bin/bash
#进程管理工具---htop
echo "正在检查安装系统依赖包，请稍等......"
yum install ncurses-devel -y
echo "正在下载htop主程序包......"
DOWNLOAD=/usr/local/src/
cd ${DOWNLOAD}
wget http://sourceforge.net/projects/htop/files/htop/1.0.2/htop-1.0.2.tar.gz/download
echo "正在解压和编译htop主程序包......"
tar zxf htop-1.0.2.tar.gz
cd htop-1.0.2
./configure
echo "安装正在进行中，请稍等......"
make && make install
echo "安装成功，请使用......"
echo "直接运行：#htop"
