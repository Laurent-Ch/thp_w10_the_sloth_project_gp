Rails.application.routes.draw do
  resources :orders
  resources :tags
  resources :users
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
