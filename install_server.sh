#!/bin/bash

export SERVER_PATH=$PWD


echo factorio-init
git clone https://github.com/Bisa/factorio-init.git
git -C $SERVER_PATH/factorio-init/ config pull.rebase true   # rebase

echo factorio-updater
git clone https://github.com/narc0tiq/factorio-updater.git
git -C $SERVER_PATH/factorio-updater/ config pull.rebase true   # rebase

echo Factorio-mods-manager
git clone https://github.com/Tantrisse/Factorio-mods-manager.git
git -C $SERVER_PATH/Factorio-mods-manager/ config pull.rebase true   # rebase


cp -r $SERVER_PATH/copy-configs/factorio-init $SERVER_PATH/
cp -r $SERVER_PATH/copy-configs/Factorio-mods-manager $SERVER_PATH/
mkdir $SERVER_PATH/factorio

$SERVER_PATH/factorio-init/factorio install

cp -rf $SERVER_PATH/copy-configs/factorio $SERVER_PATH/


echo "run ./update_server.sh to install your mods"