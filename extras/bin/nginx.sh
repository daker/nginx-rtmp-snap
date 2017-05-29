#!/bin/bash

#mkdir -p $SNAP_DATA/../common/cache/nginx/
mkdir -p $SNAP_DATA/nginx/conf.d/
mkdir -p $SNAP_DATA/nginx/cache/
mkdir -p $SNAP_DATA/nginx/log/
mkdir -p $SNAP_DATA/nginx/run/

if [ "$1" == "start" ]; then
    $SNAP/bin/nginx -g "daemon off;"
else
    $SNAP/bin/nginx "$@"
fi