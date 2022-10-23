Rails.application.routes.draw do
  devise_for :users
  root to: 'blogs#new'
  resources :blogs, only: [:new, :index, :show, :create, :edit, :update, :destroy]
end
