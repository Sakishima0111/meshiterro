Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about', as: 'about'

  devise_for :users
    devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    end
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
