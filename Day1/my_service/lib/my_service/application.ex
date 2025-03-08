defmodule MyService.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MyServiceWeb.Telemetry,
      MyService.Repo,
      {DNSCluster, query: Application.get_env(:my_service, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MyService.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: MyService.Finch},
      # Start a worker by calling: MyService.Worker.start_link(arg)
      # {MyService.Worker, arg},
      # Start to serve requests, typically the last entry
      MyServiceWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MyService.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MyServiceWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
