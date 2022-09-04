#!/bin/bash
/usr/bin/echo "<pre>" > ./index.html
/usr/bin/cat ./sotd | sed 's/</\&lt;/g' | sed 's/>/\&gt;/g' >> ./index.html
/usr/bin/echo "</pre>" >> ./index.html

