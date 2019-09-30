Rails.application.routes.draw do
  resources :events
  resources :locations
  resources :categories
  resources :calendars
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
