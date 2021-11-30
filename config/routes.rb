Rails.application.routes.draw do
  root to: "users#index"
  devise_for :users
  resources :tags
  resources :users
  resources :pictures
  resources :cards
  resources :team, only: [:index]
  resources :faq, only: [:index]
  resources :pictures do
    resources :orders, only: [:new, :create]
  end

end
