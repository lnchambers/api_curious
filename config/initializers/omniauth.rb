Rails.application.config.middleware.use OmniAuth::Builder do
  provider :eve_online_sso, ENV['EVE_CLIENT_ID'], ENV['EVE_SECRET_KEY']
end
