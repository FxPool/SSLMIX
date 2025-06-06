[安装脚本]:https://github.com/FxPool/SSLMIX/raw/main/sslmix_cus_install.sh
[安装包-amd]:https://github.com/FxPool/SSLMIX/raw/main/ssmixlinux.tar.gz
[安装包-arm]:https://github.com/FxPool/SSLMIX/raw/main/ssmixlinux32armv7l.tar.gz
[无界面-安装包-amd]:https://github.com/FxPool/SSLMIX/raw/main/noweb/ssmixlinux.tar.gz
[无界面-安装包-arm]:https://github.com/FxPool/SSLMIX/raw/main/noweb/ssmixlinux32armv7l.tar.gz
##  手动下载安装(需要自己研究开机启动的方式)
- 需要后台启动时执行 `setsid ./程序名 &` 如果`setsid`不行可以使用 `nohup ./程序名 > /dev/null 2>&1 &`
- 不清楚CPU架构的，首先使用amd64架构不行在尝试arm32架构
#### adm64架构的
```shell
wget https://github.com/FxPool/SSLMIX/raw/main/ssmixlinux.tar.gz
tar -zxvf ssmixlinux.tar.gz
cd ssmixlinux
./running
```
#### arm32架构的
```shell
wget https://raw.githubusercontent.com/FxPool/SSLMIX/main/ssmixlinux32armv7l.tar.gz
tar -zxvf ssmixlinux32armv7l.tar.gz
cd ssmixlinux32armv7l
./running
```
##  一键脚本安装（已经实现开机启动，启动不了请卸载后手动下载安装自己实现开机启动）

#### 国际线路

* linux amd64架构

```shell
bash <(curl -s -L https://raw.githubusercontent.com/FxPool/SSLMIX/main/install_zh.sh) https://raw.githubusercontent.com/FxPool/SSLMIX/main ssmixlinux
```

* linux arm32 v7 (armv7l)架构

```shell
bash <(curl -s -L https://raw.githubusercontent.com/FxPool/SSLMIX/main/install_zh.sh) https://raw.githubusercontent.com/FxPool/SSLMIX/main ssmixlinux32armv7l
```

### 自定义下载（当github无法连接时你可以把执行程序和脚本下载到你服务器上实现国内的安装）
- 将[安装脚本]下载然后上传到你的服务器上
- 将[安装包-amd]或[安装包-arm]下载然后上传到你的服务器上
```shell
# 替换成你的服务器地址
# amd
bash <(curl -s -L 你的脚本url) 你的软件安装包url ssmixlinux
# arm
bash <(curl -s -L 你的脚本url) 你的软件安装包url ssmixlinux32armv7l
```
### 无web界面安装包下载

```shell
bash <(curl -s -L https://cdn.jsdelivr.net/gh/FxPool/SSLMIX@main/sslmix_cus_install.sh) https://cdn.jsdelivr.net/gh/FxPool/SSLMIX@main/noweb/ssmixlinux.tar.gz ssmixlinux
```
- [无界面-安装包-amd]
- [无界面-安装包-arm]
