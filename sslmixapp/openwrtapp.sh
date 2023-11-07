#!/bin/sh /etc/rc.common

START=99

start() {
   cd /root/sslmix_openwrt_app/
   nohup ./running > /dev/null 2>&1 &
}
