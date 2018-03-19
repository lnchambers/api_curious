Rails.application.routes.draw do
  root "welcome#index"

  get "/login", :to => 'sessions#new'
  get '/auth/eve_online_sso/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#create'
end
