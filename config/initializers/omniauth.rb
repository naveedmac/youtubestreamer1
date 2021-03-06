OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,  ENV["GOOGLE_API_KEY"], ENV["GOOGLE_API_SECRET"], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
# provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end
