defmodule ExclusiveArc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ExclusiveArc.Repo,
      # Start the Telemetry supervisor
      ExclusiveArcWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ExclusiveArc.PubSub},
      # Start the Endpoint (http/https)
      ExclusiveArcWeb.Endpoint
      # Start a worker by calling: ExclusiveArc.Worker.start_link(arg)
      # {ExclusiveArc.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExclusiveArc.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ExclusiveArcWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
