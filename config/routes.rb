Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show]
  root to: "homes#top"
  get 'homes/about', as: 'about'

  devise_for :users
    devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    end
end
