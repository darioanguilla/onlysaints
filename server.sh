#!/bin/bash
while true; do
    out=$(ps | grep nc)
    if [[-n $out]] then
	    kill -9 $(ps -a | grep nc | awk '{print $1}')
	fi
	printf "HTTP/1.0 200 OK\nContent-Length: `wc index.html | awk '{print $3-1}'`\n\n`cat index.html`" | nc -l 9191 > /dev/null
done;
