FROM bitwalker/alpine-elixir:1.7.4

# Set exposed ports
EXPOSE 5000
ENV PORT=5000

ENV MIX_ENV=dev

VOLUME [ "/lib" ]

USER default

CMD iex ./lib/elixir_tutorial.ex