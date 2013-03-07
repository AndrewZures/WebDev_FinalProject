Pinterest::Application.routes.draw do  

  post "pin_comments" => "pin_comments#create"
  get "pin_comment/:id/edit" => "pin_comments#edit", as: :edit_pin_comment
  get "pin_comments/destroy"

  get "createkittenboard" => "boards#create_kitten_board", as: :kittens
  get "createcageboard" => "boards#create_cage_board", as: :cage


  get "following/create"

  get "following/destroy"

  get "followers/create"

  get "followers/destroy"

  get "follows/create"

  get "follows/destroy"

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
