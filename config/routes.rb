Rails.application.routes.draw do
  get 'posts/donations'
  get 'posts/follows'
  get 'posts/ratings'
  get 'posts/likes'
  get 'posts/comments'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
