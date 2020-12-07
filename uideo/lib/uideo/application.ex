defmodule Uideo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Uideo.Repo,
      # Start the Telemetry supervisor
      UideoWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Uideo.PubSub},
      # Start the Endpoint (http/https)
      UideoWeb.Endpoint
      # Start a worker by calling: Uideo.Worker.start_link(arg)
      # {Uideo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Uideo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    UideoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
