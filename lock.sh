#!/bin/sh

BASEDIR=$(dirname "$0")
BLANK='#00000000'
CLEAR='#ffffff22'
#DEFAULT='#ff00ffcc'
DEFAULT='#F4A7B9'
TEXT='#E4A7A9'
#TEXT='#ee00eeee'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'

$BASEDIR/i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 1                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %m %Y"       \
--keylayout 1                \
-i $BASEDIR/koupen-big.png \


#-C \
#convert /usr/share/backgrounds/Origin_of_nature_by_Julian_Tomasini.jpg -resize $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/') RGB:- | i3lock-color --raw $(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'):rgb --image /dev/stdin
#-i /usr/share/backgrounds/Origin_of_nature_by_Julian_Tomasini.jpg \
