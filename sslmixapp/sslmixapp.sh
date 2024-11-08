#!/bin/sh /etc/rc.common

USE_PROCD=1
START=90

PROG=/usr/bin/sslmix

start_service() {
        procd_open_instance
        procd_set_param command $PROG run
        echo [ok]
        procd_set_param respawn
        procd_close_instance
}
reload_service() {
        stop
        start
}
