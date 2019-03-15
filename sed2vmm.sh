#!/bin/bash
# helper script to change BelATMO .sld's to BelAQI
# to change all files in folder, e.g.:
# chmod +x /Users/olavpeeters/gitlab/map_legends/sed.sh
# find /Users/olavpeeters/gitlab/map_legends/ -name '*.svg' -exec /Users/olavpeeters/gitlab/map_legends/sed.sh {} \;
sed -i '' -e '
s/BelAQI/VMM/g;
s/\#0000FF/\#009999/g;
s/\#0099FF/\#99CC66/g;
s/\#009900/\#FFFF33/g;
s/\#00FF00/\#FFCC00/g;
s/\#FFFF00/\#FF6600/g;
s/\#FFBB00/\#CC0000/g;
s/\#FF6600/\#990000/g;
s/\#FF0000/\#660066/g;
s/\#990000/\#000000/g;
s/\#660000/\#660000/g;
' $1
