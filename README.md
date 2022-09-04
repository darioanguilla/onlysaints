# OnlySaints
_The Saints of the Day_

OSs is a service to set up a server that return the saints of the day

- Source [Saints of the day | https://www.vaticannews.va/it/santo-del-giorno.html]
- Entirely written in bash

## Dependencies

You have to install thes dependencies before:

- Toilet
- Jq
- iconv
- fold
- boxes

## Installation
- Execute update-motd.sh (you can insert in a cron job @daily)
- Execute server.sh (this script open an inbound connection on port 9191)
- Make a GET request on localhost:9191
