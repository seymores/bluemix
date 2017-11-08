use Mix.Config

# You can configure your application as:
#
#     config :bluemix, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:bluemix, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# config :bluemix, url: "https://gateway.watsonplatform.net/natural-language-understanding/api",
#                  username: "YOUR_USERNAME",
#                  password: "YOUR_PASSWORD"

import_config "#{Mix.env}.exs"
