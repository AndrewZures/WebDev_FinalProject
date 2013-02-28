Pinterest::Application.routes.draw do  

  #session routes	  
  get "sessions/new" => 'sessions#new', as: :sign_in
  get "sessions/destroy" => 'sessions#destroy', as: :sign_out
  post "sessions/create"

  root to: "users#index"

  resources :pins
  resources :boards
  resources :users
end
