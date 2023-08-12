#!/bin/sh
xsetroot -solid "#121317"
xsetroot -name "$( slstatus )" &
unclutter -idle 1 -root -grab -visible &
exec /usr/local/bin/dwm
