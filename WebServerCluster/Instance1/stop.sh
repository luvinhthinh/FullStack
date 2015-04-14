#!/bin/bash

source ../../env.sh
source localEnv.sh

key=$root_dir/$config_dir/$config_file
pid=`ps -ef | grep -v grep | grep "$key" | awk '{print $2}'`

sudo kill $pid
echo "process killed : $pid ! with keyword : $key"
