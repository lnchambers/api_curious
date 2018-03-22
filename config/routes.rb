Rails.application.routes.draw do
  get 'users/show'

  get 'user/show'

  root "welcome#index"

  get '/login', :to => 'sessions#new'
  get '/auth/:provider/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#create'
  resources :users
end
