Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    member do
      get :profile
    end

    collection do
      get :settings
      get :preferences
    end
  end

  resources :charities
  resources :comments, only: [ :create, :update, :destroy]
  resources :donations, only: [ :create]
  resources :follows, only: [ :create, :update]
  resources :likes, only: [ :create, :update]
  resources :posts, only: [ :new, :create, :edit, :update, :index]
  resources :ratings, only: [ :create, :update]

end
