# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :f1, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:f1, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# Configure your database
config :f1, F1.Repo,
  adapter: Sqlite.Ecto2,
  # hostname: "localhost",
  # pool_size: 10
  # username: "",
  # password: "",
  database: "/Users/randre03/Dropbox/Projects/f1/data/f1db.db"

config :f1, ecto_repos: [F1.Repo]

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"