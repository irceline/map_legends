#!/bin/bash
# helper script to change BelATMO .sld's to BelAQI
# to change all files in folder, e.g.:
# chmod +x /Users/olavpeeters/gitlab/map_legends/sed.sh
# find /Users/olavpeeters/gitlab/map_legends/ -name '*.svg' -exec /Users/olavpeeters/gitlab/map_legends/sed.sh {} \;
sed -i '' -e '
s/\#0000FF/\#0000FF/g;
s/\#007EFD/\#0099FF/g;
s/\#009800/\#009900/g;
s/\#00FF00/\#00FF00/g;
s/\#CCFF33/\#FFFF00/g;
s/\#F8E748/\#FFBB00/g;
s/\#FF8000/\#FF6600/g;
s/\#FF0000/\#FF0000/g;
s/\#C00000/\#990000/g;
s/\#5A0000/\#660000/g;
' $1
