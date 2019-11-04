#!/bin/bash

s=$(systemctl is-active mariadb)

if [ $# -gt 0 ]
then
  [ $s = "active" ] && echo "年" || echo "力";
  exit;
fi

if [ $s = "active" ]
then
  $(systemctl stop mariadb) && echo 力 || echo error;
else
  $(systemctl start mariadb) && echo 年 || echo error;
fi
