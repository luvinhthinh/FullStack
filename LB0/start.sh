#!/bin/bash

source ../env.sh
source localEnv.sh

key=$root_dir/$config_dir/$config_file

sudo nginx -c $key

pid=`ps -ef | grep -v grep | grep "$key" | awk '{print $2}'`
echo "process created : $pid ! with keyword : $key"