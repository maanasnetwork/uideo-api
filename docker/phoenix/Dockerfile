# Extend from the official Elixir image
FROM elixir:slim

# Install postgres client
RUN apt-get update && \
  apt-get install -y postgresql-client inotify-tools

# Install hex package manager
# By using --force, we don’t need to type “Y” to confirm the installation
RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.5.7 --force

# Copy entrypoint
COPY ./docker/phoenix/entrypoint /entrypoint
RUN sed -i 's/\r$//g' /entrypoint
RUN chmod +x /entrypoint

# Copy start
COPY ./docker/phoenix/start /start
RUN sed -i 's/\r$//g' /start
RUN chmod +x /start

WORKDIR /app/uideo

ENTRYPOINT ["/entrypoint"]
