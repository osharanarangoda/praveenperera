use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :praveenperera, Praveenperera.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :praveenperera, Praveenperera.Repo,
	adapter: Ecto.Adapters.Postgres,
	url: System.get_env("DATABASE_URL"),
	pool_size: 20

# Configure mailgun praveen
config :praveenperera, mailgun_domain: System.get_env("MAILGUN_DOMAIN"),
                       mailgun_key: System.get_env("MAILGUN_KEY")

# Configure mailgun oshie
config :praveenperera, o_mailgun_domain: System.get_env("O_MAILGUN_DOMAIN"),
                      o_mailgun_key: System.get_env("O_MAILGUN_KEY"),
                      o_email: System.get_env("O_EMAIL")
