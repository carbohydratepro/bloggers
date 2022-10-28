Rails.application.routes.draw do
  get 'home/about', to: 'homes#about'
  devise_for :users

  root to: 'homes#top'

  resources :blogs, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
