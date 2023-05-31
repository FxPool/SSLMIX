[安装脚本]:https://github.com/FxPool/SSLMIX/raw/main/sslmix_cus_install.sh
[安装包-amd]:https://github.com/FxPool/SSLMIX/raw/main/ssmixlinux.tar.gz
[安装包-arm]:https://github.com/FxPool/SSLMIX/raw/main/ssmixlinux32armv7l.tar.gz
[无界面-安装包-amd]:https://github.com/FxPool/SSLMIX/raw/main/noweb/ssmixlinux.tar.gz
[无界面-安装包-arm]:https://github.com/FxPool/SSLMIX/raw/main/noweb/ssmixlinux32armv7l.tar.gz
##  国际网络

### 一键安装脚本(linux openwrt)

```shell
bash <(curl -s -L https://raw.githubusercontent.com/FxPool/SSLMIX/main/openwrt.sh) https://github.com/FxPool/SSLMIX/raw/main/ssmixlinux.tar.gz ssmixlinux https://raw.githubusercontent.com/FxPool/SSLMIX/main/sslmixapp/sslmixapp.sh
```

### 一键安装脚本(linux amd64架构)

```shell
bash <(curl -s -L https://raw.githubusercontent.com/FxPool/SSLMIX/main/install_zh.sh) https://raw.githubusercontent.com/FxPool/SSLMIX/main ssmixlinux
```

### 一键安装脚本(linux arm32 v7 (armv7l)架构)

```shell
bash <(curl -s -L https://raw.githubusercontent.com/FxPool/SSLMIX/main/install_zh.sh) https://raw.githubusercontent.com/FxPool/SSLMIX/main ssmixlinux32armv7l
```

##  国内网络
### 一键安装脚本(linux amd64架构) 

```shell
bash <(curl -s -L https://gitee.com/fxpool/sslmix/raw/master/sslmix_cus_install.sh) https://gitee.com/fxpool/sslmix/raw/master/ssmixlinux.tar.gz ssmixlinux
```

### 一键安装脚本(linux arm32 v7 (armv7l)架构)

```shell
bash <(curl -s -L https://gitee.com/fxpool/sslmix/raw/master/sslmix_cus_install.sh) https://gitee.com/fxpool/sslmix/raw/master/ssmixlinux32armv7l.tar.gz ssmixlinux32armv7l
```

### windows 直接下载解压

```shell
https://github.com/FxPool/SSLMIX/raw/main/ssmixwindows.zip
```


### 自定义下载
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
