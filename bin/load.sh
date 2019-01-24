#!/bin/sh
if [ ! -d "$HOME/bin/docker" ]; then
  printf "You need docker to run this script"
fi

docker load < alpine-elixir.tar
docker images | grep alpine-elixir