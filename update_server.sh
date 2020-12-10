#!/bin/bash

export SERVER_PATH=$PWD

echo factorio-init
git -C $SERVER_PATH/factorio-init/ pull
echo Factorio-mods-manager
git -C $SERVER_PATH/Factorio-mods-manager/ pull
echo factorio-updater
git -C $SERVER_PATH/factorio-updater/ pull

$SERVER_PATH/factorio-init/factorio stop

cp -rf $SERVER_PATH/copy-configs/factorio $SERVER_PATH/



$SERVER_PATH/factorio-init/factorio update
$SERVER_PATH/factorio-init/factorio mod list
$SERVER_PATH/factorio-init/factorio mod update

grep -vwE "(description|broken|forced)" $SERVER_PATH/copy-configs/factorio/mods/mod-list.json > $SERVER_PATH/factorio/mods/mod-list.json

$SERVER_PATH/factorio-init/factorio start
