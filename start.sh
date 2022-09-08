#!/bin/bash
kill -9 $(ps | grep nc | awk '{print $1}')
kill -9 $(ps | grep server.sh | awk '{print $1}')
/onlysaints/update-motd.sh
/onlysaints/server.sh
