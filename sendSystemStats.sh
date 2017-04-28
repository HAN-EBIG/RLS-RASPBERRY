#!/usr/bin/env bash
EBIG_IP=`ip route get 1 | awk '{print $NF;exit}'`
DISK_AVAIL=`df -hm --output=avail / | tail -n +2`
MEM_AVAIL=`free -m | awk '{print $4}'| head -2| tail -1`
CONTROLLER_STATE=`systemctl is-active ebig-controller.service >/dev/null 2>&1 && echo "1" || echo "0"`

data_string="'controller-monitoring,host=${EBIG_IP} diskspace=${DISK_AVAIL},mem=${MEM_AVAIL},controllerRunning=${CONTROLLER_STATE}'"
command="/usr/bin/curl -i -XPOST 'http://145.74.104.50:8086/write?db=ebig' --data-binary ${data_string}"

eval ${command}