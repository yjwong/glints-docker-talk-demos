FROM elixir:1.9

WORKDIR /app

ADD . /app

RUN cp /app/config/dev.exs.example /app/config/dev.exs && \
    sed -i 's#"localhost"#"postgres"#g' /app/config/dev.exs

RUN echo "yes" | mix deps.get && \
    echo "yes" | mix local.rebar

CMD ["mix", "phx.server"]
EXPOSE 4000
