FROM elixir:1.9

WORKDIR /app

ADD . /app

RUN cp /app/config/dev.exs.example /app/config/dev.exs && \
    sed -i 's#"localhost"#"postgres"#g' /app/config/dev.exs

RUN yes | mix deps.get

CMD ["mix", "phx.server"]
EXPOSE 4000
