#! /bin/zsh

currLayout=$(setxkbmap -query | grep layout)

if [[ "$currLayout" == "layout:     us" ]];
then
   setxkbmap es
elif [[ "$currLayout" == "layout:     es" ]];
then
   setxkbmap us
fi

