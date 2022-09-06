#!/bin/bash
service cron start
while true; do
    ./restart.sh
done;
