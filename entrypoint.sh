#!/bin/bash
service cron start
./restart.sh
while true; do
	sleep
done;
