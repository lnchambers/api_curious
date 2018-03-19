Rails.application.config.middleware.use OmniAuth::Builder do
  provider :crest, ENV['EVE_CLIENT_ID'], ENV['EVE_SECRET_KEY']
end
