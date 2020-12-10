#!/bin/bash

export SERVER_PATH=$PWD

$SERVER_PATH/stop_server.sh

tar -cvpzf $SERVER_PATH/backups/backup-factorio-$(date --iso-8601=seconds).tar.gz -C $SERVER_PATH --one-file-system --exclude=./backups .

rm -rf $SERVER_PATH/factorio
rm -rf $SERVER_PATH/factorio-init
rm -rf $SERVER_PATH/factorio-updater
rm -rf $SERVER_PATH/Factorio-mods-manager
