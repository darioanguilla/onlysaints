# OnlySaints
_The Saints of the Day_

OSs is a service to set up a server that return the saints of the day

- Source [VaticanNews](https://www.vaticannews.va/it/santo-del-giorno.html "Saints of the day")
- Entirely written in bash for docker

## Istallation
- clone repo: `git clone https://github.com/darioanguilla/onlysaints.git`
- change dir: `cd onlysaints`
- build the image: `docker build -t onlysaints:dev .`
- run a container: `docker run --rm --name onlysaints -d -p 9191:9191 onlysaints:dev`

## TODO
- Create a Dockerfile from alpine!

## License
GNU GPLv3
