#!/bin/bash
/usr/bin/cat /onlysaints/index.ante > /onlysaints/index.html
/usr/bin/cat /onlysaints/sotd | sed 's/</\&lt;/g' | sed 's/>/\&gt;/g' >> /onlysaints/index.html
/usr/bin/cat /onlysaints/index.post >> /onlysaints/index.html

