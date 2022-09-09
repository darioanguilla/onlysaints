#!/bin/bash
while true; do
	kill -9 $(ps -a | grep nc | awk '{print $1}')
	printf "HTTP/1.0 200 OK\nContent-Length: `wc /onlysaints/index.html | awk '{print $3-1}'`\n\n`cat /onlysaints/index.html`" | nc -l 9191 > /dev/null
done;
