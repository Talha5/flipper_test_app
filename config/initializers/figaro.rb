# Put here the variables used by all the environments
variables = %w[SERVER_URL PASSWORD_RESET_URL]

unless Rails.env.test?
  # Variables not used by the test environment
  variables += %w[SECRET_KEY_BASE]
end

Figaro.require_keys(variables)
# SERVER_URL=https://a9049493e30a.ngrok.io SECRET_KEY_BASE=lkansdknasjnbdjabdskjabjksdb PASSWORD_RESET_URL=https://a9049493e30a.ngrok.io