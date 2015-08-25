#!/bin/sh

# start a server with a specific DISPLAY

Xvfb -fp /usr/share/X11/fonts/misc :0 -screen 0 1280x1024x24&
#DISPLAY=:0 firefox 

# start firefox in this vnc session
#firefox 
count=1
filename="$1"
while read -r line
do
    #pkill -f firefox
    url=$line
    DISPLAY=:0 firefox --width=1280 --height=1024 $url &
    sleep 5
    DISPLAY=:0 import -window root -crop 1264x953+0+71 image$count.jpg
    count=`expr $count + 1`

done < "$filename"

# clean up when done
