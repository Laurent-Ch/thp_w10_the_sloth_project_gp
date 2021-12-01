Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :tags
  resources :users
  resources :pictures
  resources :cards
  resources :team, only: [:index]
  resources :faq, only: [:index]
  resources :pictures
  resources :orders, only: [:new, :create]
  resources :home, only: [:index]
  
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

end
