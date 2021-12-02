#!/usr/bin/env bash

python ./scripts/apkg-tools_py3.py create apk
chown -R `stat -f %u:%g .` *
chmod 755 ./apk/CONTROL
chmod -R 644 ./apk/CONTROL/*
chmod +x ./apk/CONTROL/start-stop.sh
