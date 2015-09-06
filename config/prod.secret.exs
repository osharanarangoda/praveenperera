use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :praveenperera, Praveenperera.Endpoint,
  secret_key_base: "LMsWVbuVHbv+ptuAEI6cMmPcChJ6w/xlN7AS9WwD4dzA0AaP+tpbmFgp5wdmkFF5"

# Configure your database
config :praveenperera, Praveenperera.Repo,
	adapter: Ecto.Adapters.Postgres,
	url: {:system, "DATABASE_URL"}
