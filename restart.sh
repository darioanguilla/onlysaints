#!/bin/bash
if ps | grep nc > /dev/null; then
	kill -9 $(ps | grep nc | awk '{print $1}')
fi

if ps | grep server.sh > /dev/null; then
            kill -9 $(ps | grep server.sh | awk '{print $1}')
fi

if ps | grep start.sh > /dev/null; then
            kill -9 $(ps | grep start.sh | awk '{print $1}')
fi

if ps | grep restart.sh | awk 'NR==2{print $1}' > /dev/null; then
            kill -9 $(ps | grep restart.sh | awk 'NR==1{print $1}')
fi

/onlysaints/start.sh
