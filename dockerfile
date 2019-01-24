FROM bitwalker/alpine-elixir:1.7.4

# Set exposed ports
ENV MIX_ENV=dev

VOLUME [ "/lib" ]

USER default

CMD iex