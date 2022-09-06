#!/bin/bash
if ps -ax | grep nc > /dev/null; then
	kill -9 $(ps -ax | grep nc | awk '{print $1}')
fi

if ps -ax | grep server.sh > /dev/null; then
            kill -9 $(ps -ax | grep server.sh | awk '{print $1}')
fi

if ps -ax | grep start.sh > /dev/null; then
            kill -9 $(ps -ax | grep start.sh | awk '{print $1}')
fi

if ps -ax | grep restart.sh | awk 'NR==2{print $1}' > /dev/null; then
            kill -9 $(ps -ax | grep restart.sh | awk 'NR==1{print $1}')
fi

/onlysaints/start.sh
