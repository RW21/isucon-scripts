#!/bin/bash

# rm -f /var/log/nginx/access.log
echo "" > /var/log/nginx/access.log
echo "" > /var/log/mysql/mysql-slow.log

ulimit -n $((1024*1024))

/home/isucon/private_isu.git/benchmarker/bin/benchmarker -u /home/isucon/private_isu.git/benchmarker/userdata -t http://localhost
