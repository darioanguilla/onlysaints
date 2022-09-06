#!/bin/bash
if ps -au | grep nc > /dev/null; then
	kill -9 $(ps -au | grep nc | awk '{print $1}')
fi

if ps -au | grep server.sh > /dev/null; then
            kill -9 $(ps -au | grep server.sh | awk '{print $1}')
fi

if ps -au | grep start.sh > /dev/null; then
            kill -9 $(ps -au | grep start.sh | awk '{print $1}')
fi

if ps -au | grep restart.sh | awk 'NR==2{print $1}' > /dev/null; then
            kill -9 $(ps -au | grep restart.sh | awk 'NR==1{print $1}')
fi

./start.sh
