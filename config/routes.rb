Rails.application.routes.draw do
  resources :users
  resources :games, only: [:show, :index]

  root to: 'hello_world#index'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
