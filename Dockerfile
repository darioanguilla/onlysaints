FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends bash git figlet toilet jq boxes curl locales netcat-openbsd konwert konwert-filters cron \
    && locale-gen it_IT.UTF-8 \
    && git config --global http.sslverify "false" && git clone -b feature/docker --single-branch https://github.com/darioanguilla/onlysaints.git
WORKDIR /onlysaints
RUN crontab -l | { cat; echo "@daily /bin/bash kill -9 $(ps -a | grep restart.sh | awk '{print $1}') && /onlysaints/restart.sh"; } | crontab -
CMD cron
EXPOSE 9191
ENTRYPOINT ["/bin/bash","/onlysaints/start.sh"]
