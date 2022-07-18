#!/bin/bash

mysqldumpslow /var/log/mysql/mysql-slow.log -s t | less

