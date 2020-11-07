#!/bin/bash
TMPWP=$HOME/.config/i3/wallpaper.png
ICON=$HOME/.config/i3/lock.png
TMPBG=/tmp/screen.png

i3lock --color "#2f343f" &
scrot -m $TMPBG
#convert $TMPBG -scale 10% -median 4 -blur 0x4 -scale 1000%  $TMPBG
#convert $TMPBG -blur 0x2 $TMPBG
convert $TMPBG -scale 10% -scale 1000% $TMPBG
#convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
killall i3lock
i3lock -i $TMPBG