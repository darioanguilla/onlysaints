# OnlySaints

_The Saints of the Day_

OSs is a service to set up a server that return the saints of the day

- Source [VaticanNews](https://www.vaticannews.va/it/santo-del-giorno.html "Saints of the day")
- Entirely written in bash for docker

## Installation

- clone repo: `git clone https://github.com/darioanguilla/onlysaints.git`
- change dir: `cd onlysaints`
- build the image: `docker build -t onlysaints:dev .`
- run a container: `docker run --rm --name onlysaints -d -p 9191:9191 onlysaints:dev`
- go to: `http://localhost:9191` or to: `http://0.0.0.0:9191`

## TODO

- Create a Dockerfile from alpine!

## License

GNU GPLv3
