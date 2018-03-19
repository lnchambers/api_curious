Rails.application.routes.draw do
  root "welcome#index"

  resources :sessions, only: [:create, :new]
end
