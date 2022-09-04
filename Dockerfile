FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends bash git figlet toilet jq boxes curl locales netcat-openbsd \
    && locale-gen it_IT.UTF-8 \
    && git config --global http.sslverify "false" && git clone https://github.com/darioanguilla/onlysaints.git
WORKDIR /onlysaints
RUN ./update-motd.sh
EXPOSE 9191
ENTRYPOINT ["/bin/bash","./server.sh"]
