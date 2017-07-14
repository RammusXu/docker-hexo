#!/bin/sh
set -e

if [ "$1" = 'install' ]; then
    exec npm install
elif [ "$1" = 'server' ]; then
    exec hexo server
else
    exec "$@"
fi
