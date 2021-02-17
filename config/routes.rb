Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  root to: 'home#index'

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
  get 'search' => 'search#index'
end
