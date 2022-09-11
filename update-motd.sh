#!/bin/bash
export LC_TIME=it_IT.UTF-8
COL=0
/usr/bin/date +"%a, %d%b%Y" | /usr/bin/figlet -f big > /onlysaints/motd;
COL=$(wc -L /onlysaints/motd | awk '{print $1}');
/usr/bin/echo "" >> /onlysaints/motd;
/usr/bin/curl -s -H "Accept: application/json" https://www.vaticannews.va/it/santo-del-giorno/`/usr/bin/date +"%m/%d"`.saints.js | /usr/bin/jq -r '.saints[] | "\"\(.name)\"\n\n\(.summary)\n"'| fold -w$COL | awk '{$1=$1};1' >> /onlysaints/motd;
/usr/bin/cat /onlysaints/motd | /usr/bin/boxes -d parchment > /onlysaints/sotd;
/onlysaints/update-saints.sh
