#!/bin/bash
    echo "Killing nc"
    kill -9 $(ps | grep nc | awk '{print $1}') && echo "nc killed"
    echo "Killing server.sh"
    kill -9 $(ps | grep server.sh | awk '{print $1}') && echo "server killed"
    echo "Killing start.sh"
    kill -9 $(ps | grep start.sh | awk '{print $1}') && echo "start killed"
    echo "Killing restart.sh"
    kill -9 $(ps | grep restart.sh | awk 'NR==1{print $1}') && echo "restart killed"
/onlysaints/start.sh
