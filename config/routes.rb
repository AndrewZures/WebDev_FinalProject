Pinterest::Application.routes.draw do  

  get "friends/new"
  post "friends/:id" => "friends#create", as: :create_friend
  get "friends/edit"
  get "friends/update"
  get "friends/destroy"
  get "friends/index"

  get "find_friends" => "friends#find_friends", as: :find_friends


  resources :board_pins


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
