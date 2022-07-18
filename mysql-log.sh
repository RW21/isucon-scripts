#!/bin/bash

mkdir -p /var/log/previous-logs
filename=/var/log/previous-logs/$(date +"%H-%M-%S").mysql-log
echo $filename
mysqldumpslow /var/log/mysql/mysql-slow.log -s t > $filename
less $filename
