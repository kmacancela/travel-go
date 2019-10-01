Rails.application.routes.draw do
  
  resources :categories
  resources :events
  resources :users
  resources :locations

  # patch "/sessions/reset", to: "sessions#reset"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  # delete "/logout", to: "sessions#destroy"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
