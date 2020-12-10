#!/bin/bash

cd $SERVER_PATH

cat ./factorio/saves/dates.dat |  perl -ne 'INIT{ $/ = "\0";} chomp; m!^([0-9]+)/([0-9]+)/([0-9]+)/(.*)!s or next; my ($ct, $mt, $at, $f) = ($1, $2, $3, $4); utime $at, $mt, $f;'

echo "restored from $SERVER_PATH/factorio/saves/dates.dat"