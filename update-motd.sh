#!/bin/bash
export LC_TIME=it_IT.UTF-8
COL=0
/usr/bin/date +"%a, %d%b%Y" | /usr/bin/toilet -f big > ./motd;
COL=$(wc -L ./motd | cut -d " " -f 1);
/usr/bin/echo "" >> ./motd;
/usr/bin/curl -s -H "Accept: application/json" https://www.vaticannews.va/it/santo-del-giorno/`/usr/bin/date +"%m/%d"`.saints.js | /usr/bin/jq -r '.saints[] | "\"\(.name)\"\n\n\(.summary)\n"'| iconv -f utf-8 -t ascii//translit | fold -w$COL | awk '{$1=$1};1' >> ./motd;
/usr/bin/cat ./motd | /usr/bin/boxes -d parchment > ./sotd;
./update-saints.sh;
