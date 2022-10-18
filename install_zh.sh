#!/bin/bash
# Author: FxPool
# github: https://github.com/FxPool

# 配置变量
shell_version='1.0.3'
installfolder='/root/ssmixlinux/running'
sofname='running'
ProjectName='SSLMIX'
AppName='ssmixlinux.tar.gz'
AppFileName='ssmixlinux'
UrlHost='https://raw.githubusercontent.com/FxPool'
# 颜色
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

#停止主程序
killProcess() {
    PROCESS=$(ps -ef | grep $sofname|grep -v grep | grep -v PPID | awk '{ print $2}')
    for i in $PROCESS; do
        echo "Kill the $1 process [ $i ]"
        kill -9 $i
    done
}

#安装
install() {
  wget $UrlHost/$ProjectName/main/$AppName
  if [ ! -f "$AppNam" ]; then
    echo '安装失败，下载文件失败'
    rm $AppName
    return
  fi
  tar -zxvf $AppName
  rm $AppName
  if [ ! -d "$AppFileName" ]; then
     echo '安装失败，解压失败'
     return
  fi
  cd $AppFileName
  setsid ./$sofname &
  echo '启动成功'
}

#卸载
uninstall(){
  killProcess
  rm -rf $AppFileName
}

#启动
start(){
  cd $AppFileName
  setsid ./$sofname &
  echo '启动成功'
}

#停止
stop(){
  killProcess
  echo '停止成功'
}

#开机启动
auto_run_start(){
   echo "#!/bin/bash 
         cd /root/ && cd /$AppFileName && setsid ./$sofname &" auto.sh
   chmos 777 auto.sh
   #检查auto.sh是否存在
   if [ ! -f "auto.sh" ]; then
    echo "开机启动设置失败"
    return
   fi
   crontab @reboot sleep 5; /root/$AppFileName/auto.sh
   echo '开机启动设置成功'
}
#关闭开机启动
auto_run_stop(){
 if [ ! -f "auto.sh" ]; then
    echo "开机启动关闭失败，文件不存在"
    return
 fi
  rm /$AppFileName/auto.sh
  echo '开机启动已经关闭'
}

check_install() {
    if [ ! -f "$installfolder" ]; then
        echo -e "             ${red}<<没有安装>>"
    else
        echo -e "             ${green}<<已经安装>>"
    fi
}

show_menu() {
    clear
    check_install
    echo -e "
     脚本版本: $shell_version
     ${green}0.${plain} 退出
     ${green}1.${plain} 安装
     ${green}3.${plain} 卸载
     ${green}4.${plain} 启动
     ${green}5.${plain} 停止
     ${green}6.${plain} 开启开机启动
     ${green}7.${plain} 关闭开机启动
   "
    echo && read -p "请输入选择 [0-7]: " num
    case "${num}" in
    0)
        exit 0
        ;;
    1)
        install
        ;;
    2)
        update
        ;;
    3)
        uninstall
        ;;
    4)
        start
        ;;
    5)
        stop
        ;;
    6)
        auto_run_start
        ;;
    7)
        auto_run_stop
        ;;
    *)
        echo -e "${red}请输入正确的数字 [0-7]${plain}"
        ;;
    esac
}
show_menu
