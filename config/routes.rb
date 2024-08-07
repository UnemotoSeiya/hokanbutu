Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :stored_items, only: [:new, :index, :show, :edit, :create, :update, :destroy]
  root to: "homes#top"
  get '/homes/about', to: 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
