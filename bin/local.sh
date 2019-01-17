#!/bin/sh
trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
append_to_localshell(){
  local text="$1" zshrc
  local skip_new_line="${2:-0}"
  echo $text
  echo $skip_new_line
}

append_to_localshell "asd" 2