#!/bin/bash
set -e # Makes the script exit immediately if any command fails

if [ ! -f /server/mb_warband_dedicated.exe ]; then
    echo "Populating /server with default server files..."
    cp -r /defaults/* /server/
    #echo "Extracting default server files..."
    #tar -xzf /defaults.tar.gz -C /server --strip-components=1
fi

cd /server
exec wine mb_warband_dedicated.exe -r server_config.txt -m Napoleonic Wars
