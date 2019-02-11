Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    collection do
      get :settings
      get :preferences
    end
  end

  resources :charities do
    resources :posts, only: [:new, :create]
  end

  resources :comments, only: [ :create, :update, :destroy]
  resources :donations, only: [ :create]
  resources :follows, only: [ :create, :update]
  resources :likes, only: [ :create, :update]
  resources :posts, only: [ :new, :create, :edit, :update, :index]
  resources :ratings, only: [ :create, :update]

end
