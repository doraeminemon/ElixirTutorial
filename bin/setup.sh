#!/bin/sh
fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\\n$fmt\\n" "$@"
}

append_to_localshell(){
  local text="$1" zshrc
  local skip_new_line="${2:-0}"
  echo text
  echo skip_new_line
}

fancy_echo "Configuring asdf version manager ..."
if [ ! -d "$HOME/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.2
  append_to_zshrc "source $HOME/.asdf/asdf.sh" 1
fi

alias install_asdf_plugin=add_or_update_asdf_plugin

add_or_update_asdf_plugin() {
  local name="$1"
  local url="$2"

  if ! asdf plugin-list | grep -Fq "$name"; then
    asdf plugin-add "$name" "$url"
  else
    asdf plugin-update "$name"
  fi
}

# shellcheck disable=SC1090
source "$HOME/.asdf/asdf.sh"
add_or_update_asdf_plugin "elixir" "https://github.com/asdf-vm/asdf-elixir.git"
add_or_update_asdf_plugin "erlang" "https://github.com/asdf-vm/asdf-erlang.git"

install_asdf_language() {
  local language="$1"
  local version
  version="$(asdf list-all "$language" | grep -v "[a-z]" | tail -1)"

  if ! asdf list "$language" | grep -Fq "$version"; then
    asdf install "$language" "$version"
    asdf global "$language" "$version"
  fi
}

fancy_echo "Installing latest Erlang"
install_asdf_language "erlang" "21.1"
fancy_echo "Installing latest Elixir ..."
install_asdf_language "elixir" "1.7.4"
