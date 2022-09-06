#!/bin/bash
out="$(ps | grep nc)"
if [[ -n $out]] then
    echo "Killing nc";
	kill -9 $(ps | grep nc | awk '{print $1}')
fi
out="$(ps | grep server.sh)"
if [[ -n $out]] then    
    echo "Killing server.sh";
    kill -9 $(ps | grep server.sh | awk '{print $1}')
fi
out="$(ps | grep start.sh)"
if [[ -n $out]] then
    echo "Killing start.sh";
    kill -9 $(ps | grep start.sh | awk '{print $1}')
fi
out="$(ps | grep restart.sh)"
if [[ -n $out]] then
    echo "Killing restart.sh";
    kill -9 $(ps | grep restart.sh | awk 'NR==1{print $1}')
fi

/onlysaints/start.sh
