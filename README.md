# OnlySaints
_The Saints of the Day_

OSs is a service to set up a server that return the saints of the day

- Source [VaticanNews](https://www.vaticannews.va/it/santo-del-giorno.html "Saints of the day")
- Entirely written in bash for docker

## Dependencies

You have to install these dependencies before:

- Toilet
- Jq
- konwert
- fold
- boxes

## Installation
- Execute start.sh, this will:
- Execute update-motd.sh (you can insert in a cron job @daily)
- Execute server.sh (this script open an inbound connection on port 9191)
- Make a GET request on localhost:9191

## Docker
- build the image: docker build -t onlysaints:dev .
- run a container: docker run --rm --name onlysaints -d -p 9191:9191 onlysaints:dev

## TODO
- Compatibility with macOs and Windows (maybe impossible?)
- Add regionale response (like: en, de, pt, etc...)
- Create a Dockerfile from alpine

## License
GNU GPLv3

