#!/bin/bash

ORIGIN=$HOME

FILE=`ls $ORIGIN/*.fit`
FNAME=`basename "$FILE"`

NAME=$(echo $FNAME)
DAY=${NAME:0:2}
MONTH=${NAME:2:2}
YEAR=${NAME:4:4}

DEST=$HOME/running/$YEAR/$MONTH

if [ ! -d "$DEST" ]; then
	mkdir -p $DEST
fi

mv $FILE $DEST/$DAY.fit