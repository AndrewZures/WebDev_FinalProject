Pinterest::Application.routes.draw do  
    
  #root and introduction, main entry points for new users
  root to: "users#introduction"
  get 'introduction' => "users#introduction", as: :introduction


  #favorites routes - need only create, destroy, and index
  #RESTful routes employed for favorites
  get "favorites/" => 'favorites#index', as: :favorites
  post "favorites/" => 'favorites#create'
  delete "favorites/" => 'favorites#destroy'

  #session routes
  get "sessions/new" => 'sessions#new', as: :sign_in
  delete "sessions/destroy" => 'sessions#destroy', as: :sign_out
  post "sessions/create"

  

  post "pin_comments" => "pin_comments#create"
  get "pin_comment/:id/edit" => "pin_comments#edit", as: :edit_pin_comment
  get "pin_comments/destroy"

  post "createkittenboard" => "boards#create_kitten_board", as: :kittens
  post "createcageboard" => "boards#create_cage_board", as: :cage


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
  delete  "friends/:id" => "friends#destroy", as: :unfriend
  get "friends/index"

  get "find_friends" => "friends#find_friends", as: :find_friends


  resources :board_pins


  





  resources :pins
  resources :boards
  resources :users
  resources :board_pins
end
