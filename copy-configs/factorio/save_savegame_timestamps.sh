#!/bin/bash

cd $SERVER_PATH

find ./factorio/saves -mount -print0 | perl -ne 'INIT{ $/ = "\0"; use File::stat;} chomp; my $s = stat($_); next unless $s; print $s->ctime . "/" . $s->mtime . "/" . $s->atime ."/$_\0"; ' > ./factorio/saves/dates.dat
echo "saved to $SERVER_PATH/factorio/saves/dates.dat"