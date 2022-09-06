#!/bin/bash
    echo "Killing nc"
    kill -9 $(ps | grep nc | awk '{print $1}') && echo "nc killed"
    echo "Killing server.sh"
    kill -9 $(ps | grep server.sh | awk '{print $1}') && echo "server killed"
	/onlysaints/update-motd.sh
    /onlysaints/server.sh

