Pinterest::Application.routes.draw do  
  
  resources :pins


  resources :boards

  resources :users
end
