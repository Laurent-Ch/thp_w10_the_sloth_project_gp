Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :tags
  resources :users
  resources :pictures
  resources :cards
  
  resources :pictures do
    resources :orders, only: [:new, :create]
  end

  resources :home, only: [:index]

end
