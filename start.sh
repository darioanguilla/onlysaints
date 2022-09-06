#!/bin/bash
service cron start
./update-motd.sh
./server.sh
