FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends bash git figlet toilet jq boxes curl locales netcat-openbsd konwert konwert-filters cron \
    && locale-gen it_IT.UTF-8 \
    && git config --global http.sslverify "false" && git clone -b feature/docker --single-branch https://github.com/darioanguilla/onlysaints.git
WORKDIR /onlysaints
RUN crontab -l | { cat; echo "*/5 * * * * /onlysaints/start.sh >> cron.log 2>> cron.err"; } | crontab -
EXPOSE 9191
ENTRYPOINT ["/bin/bash","/onlysaints/entrypoint.sh"]
