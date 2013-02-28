Pinterest::Application.routes.draw do  

  root to: "users#index"

  #session routes	  
  get "sessions/new" => 'sessions#new', as: :sign_in
  get "sessions/destroy" => 'sessions#destroy', as: :sign_out
  post "sessions/create"

  resources :pins
  resources :boards
  resources :users
  resources :board_pins
end
