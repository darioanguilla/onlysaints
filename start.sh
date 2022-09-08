#!/bin/bash
printf "\nKilling nc\n"
kill -9 $(ps | grep nc | awk '{print $1}') && printf "\nnc killed\n"
printf "\nKilling server.sh\n"
kill -9 $(ps | grep server.sh | awk '{print $1}') && printf "\nserver.sh killed\n"
/onlysaints/update-motd.sh
/onlysaints/server.sh
