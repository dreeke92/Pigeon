Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charities
  resources :comments, only: [ :create, :update, :destroy]
  resources :donations, only: [ :create]
  resources :follows, only: [ :create, :update]
  resources :likes, only: [ :create, :update]
  resources :posts, only: [ :new, :create, :edit, :update, :index]
  resources :ratings, only: [ :create, :update]

end
