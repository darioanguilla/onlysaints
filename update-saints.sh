#!/bin/bash
/usr/bin/echo "<pre>" > /onlysaints/index.html
/usr/bin/cat /onlysaints/sotd | sed 's/</\&lt;/g' | sed 's/>/\&gt;/g' >> /onlysaints/index.html
/usr/bin/echo "</pre>" >> /onlysaints/index.html

