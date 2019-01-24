#!/bin/sh
if [ ! -d "$HOME/bin/docker" ]; then
  printf "You need docker to run this script"
fi

docker build -t playground/alpine-elixir .
docker run playground/alpine-elixir