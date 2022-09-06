#!/bin/bash
    echo "Killing nc";
	kill -9 $(ps | grep nc | awk '{print $1}')
    echo "Killing server.sh";
    kill -9 $(ps | grep server.sh | awk '{print $1}')
    echo "Killing start.sh";
    kill -9 $(ps | grep start.sh | awk '{print $1}')
    echo "Killing restart.sh";
    kill -9 $(ps | grep restart.sh | awk 'NR==1{print $1}')
/onlysaints/start.sh
