#!/bin/bash
printf "Killing nc"
kill -9 $(ps | grep nc | awk '{print $1}') && printf "\nnc killed"
printf "Killing server.sh"
kill -9 $(ps | grep server.sh | awk '{print $1}') && printf "\nserver.sh killed"
/onlysaints/update-motd.sh
/onlysaints/server.sh
