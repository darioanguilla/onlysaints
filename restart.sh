#!/bin/bash
if ps -a | grep nc > /dev/null; then
	kill -9 $(ps -a | grep nc | awk '{print $1}')
fi

if ps -a | grep server.sh > /dev/null; then
            kill -9 $(ps -a | grep nc | awk '{print $1}')
fi

if ps -a | grep start.sh > /dev/null; then
            kill -9 $(ps -a | grep nc | awk '{print $1}')
fi

./start.sh
