FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates git figlet toilet jq boxes curl locales netcat-openbsd konwert konwert-filters cron \
	&& update-ca-certificates \
    && locale-gen it_IT.UTF-8 \
    && git clone -b feature/docker --single-branch https://github.com/darioanguilla/onlysaints.git
WORKDIR /onlysaints
RUN crontab -l | { cat; echo "*/5 * * * * /onlysaints/start.sh"; } | crontab -
EXPOSE 9191
ENTRYPOINT ["/bin/bash","/onlysaints/entrypoint.sh"]
