#!/bin/bash
printf "Killing nc"
kill -9 $(ps | grep nc | awk '{print $1}') && printf "nc killed"
printf "Killing server.sh"
kill -9 $(ps | grep server.sh | awk '{print $1}') && printf "server killed"
/onlysaints/update-motd.sh
/onlysaints/server.sh
