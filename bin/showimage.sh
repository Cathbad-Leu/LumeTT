#!/bin/bash
IMG_DIR='./leu_test/imgs'

showimage () {
    width=
    height=
    pAR=
    while case "$1" in
	-w|-width)	width=";width=$2"
			shift; shift;;
	-h|-height)	height=";height=$2"
			shift; shift;;
	-fit)		pAR=";preserveAspectRatio=0"
			shift;;
	*)	false;;
      esac
    do	true
    done

    case "$*" in
    "")   echo "Usage: `basename $0` [-w WIDTH] [-h HEIGHT] [-par] IMAGE [...]" >&2
	  echo >&2
	  echo "This script outputs images to the terminal for display." >&2
	  echo "Parameters:" >&2
	  echo "  -w, -width N	width in N cell units, or Npx, or N%" >&2
	  echo "  -h, -height N	height in N cell units, or Npx, or N%" >&2
	  echo "  -fit		with both width and height: do not preserve aspect ratio" >&2
	  exit;;
      esac

    case "$BASH" in
    ?*)	    echo=echo;;
    *)	    echo=/bin/echo;;
    esac

    for img in "$@"
    do
      if [ -r "$img" ]
      then
        #eval $(file "$img" | sed -e 's/.*, *\([0-9]*\) *x *\([0-9]*\).*/width=\1px; height=\2px/')
        $echo -en "\e]1337;File=name=$(echo "$img" | base64 -w 0);inline=1"
        $echo -en "${width}${height}${pAR}:$(base64 -w 0 "$img")\a"
      else
        # echo cannot read file "$img" >&2
        showimage $IMG_DIR/rooms/vnum=00.png
      fi
    done
}

#var2=$(echo "$var2" |grep -o 'scrtx=[^ ,]\+'  $ROOM_FILE)
#screenl=$(echo "$var2" | cut -d'=' -f2 | cut -d'"' -f1)
#var3=$(echo "$var3" |grep -o 'scrty=[^ ,]\+'  $ROOM_FILE)
#screenh=$(echo "$var3" | cut -d'=' -f2 | cut -d'"' -f1)
#var4=$(echo "$var4" |grep -o 'scrW=[^ ,]\+'  $ROOM_FILE)
#screenw=$(echo "$var4" | cut -d'=' -f2 | cut -d'"' -f1)
#printf '\033[3;%d;%dt' $screenw $screenh

ROOM_FILE=$IMG_DIR/currentroom.txt
REFRESH_RATE=0.50
while [ "true" ]; do
    var1=$(echo "$var1" |grep -o 'vnum=[^ ,]\+.png' $ROOM_FILE)
    var5=$(echo "$var5" |grep -o 'crname=[^,]\+' $ROOM_FILE)
    roomname=$(echo "$var5" | cut -d'=' -f2 | cut -d'"' -f1)
    printf '\e]0;%s\007' $roomname
    sleep $REFRESH_RATE
    showimage -w 30 -h 30 $IMG_DIR/rooms/$var1
done