#!/usr/bin/env bash

NAME=tailscale_${RELEASE_VERSION}_amd64

curl https://pkgs.tailscale.com/stable/${NAME}.tgz --output ${NAME}.tgz \
  && tar zxvf ${NAME}.tgz \
  && cp ${NAME}/tailscale apk/bin/tailscale \
  && cp ${NAME}/tailscaled apk/bin/tailscaled \
  && chmod +x apk/bin/tailscale \
  && chmod +x apk/bin/tailscaled

chmod +x ./apk/CONTROL/start-stop.sh
