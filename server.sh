#!/bin/bash
while true; do
	printf "HTTP/1.0 200 OK\nContent-Length: `wc index.html | awk '{print $3-1}'`\n\n`cat index.html`" | nc -l 9191 > /dev/null
done;
