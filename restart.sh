#!/bin/bash
if [[$(ps | grep nc) -ne ""]] then
    echo "Killing nc";
	kill -9 $(ps | grep nc | awk '{print $1}')
fi

if [[$(ps | grep server.sh) -ne ""]] then    
    echo "Killing server.sh";
    kill -9 $(ps | grep server.sh | awk '{print $1}')
fi

if [[$(ps | grep start.sh) -ne ""]] then
    echo "Killing start.sh";
    kill -9 $(ps | grep start.sh | awk '{print $1}')
fi

if [[$(ps | grep restart.sh | awk 'NR==2{print $1}') -ne ""]] then
    echo "Killing restart.sh";
    kill -9 $(ps | grep restart.sh | awk 'NR==1{print $1}')
fi

/onlysaints/start.sh
