Pinterest::Application.routes.draw do  
    
  #root and introduction, main entry points for new users
  root to: "users#introduction"

  #introduction - main entry point for users
  get 'introduction' => "users#introduction", as: :introduction

  #favorites routes
  get "favorites/" => 'favorites#index', as: :favorites
  post "favorites/" => 'favorites#create'
  delete "favorites/" => 'favorites#destroy'

  #session routes
  get "sessions/new" => 'sessions#new', as: :sign_in
  delete "sessions/destroy" => 'sessions#destroy', as: :sign_out
  post "sessions/create"

  #pin comments
  post "pin_comments" => "pin_comments#create"
  get "pin_comment/:id/edit" => "pin_comments#edit", as: :edit_pin_comment
  get "pin_comments/destroy"

  #make pre-defined boards
  post "createkittenboard" => "boards#create_kitten_board", as: :kittens
  post "createcageboard" => "boards#create_cage_board", as: :cage

  #friends routes
  get "friends/new"
  post "friends/:id" => "friends#create", as: :create_friend
  get "friends/edit"
  get "friends/update"
  delete  "friends/:id" => "friends#destroy", as: :unfriend
  get "friends/index"

  get "find_friends" => "friends#find_friends", as: :find_friends

  get "edit_password" => "users#edit_password", as: :edit_password
  put "update_password" => "users#update_password", as: :update_password


  get "follows" => "followers#index", as: :follows
  post "follows/:id" => "followers#create", as: :create_follow
  delete "follows/id" => "followers#destroy", as: :delete_follow

  #board_pin routes
  resources :board_pins

  #pin routes
  resources :pins

  #boards routes
  resources :boards do 
    resources :comments  
  end

  #user routes
  resources :users do
    resources :comments
  end

end
