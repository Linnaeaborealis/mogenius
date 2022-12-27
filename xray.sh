#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c606b7ac-a324-44d1-ab82-739274ac3acc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

