#!/bin/bash

export SERVER_PATH=$PWD

$SERVER_PATH/factorio-init/factorio stop

echo "Saving savegame Timestamps"
./factorio/save_savegame_timestamps.sh