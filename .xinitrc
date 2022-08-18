#!/bin/sh
xsetroot -name "$( slstatus )" &
xsetroot -solid "#121317"
unclutter -idle 1 -root -grab -visible &
exec /usr/local/bin/dwm
