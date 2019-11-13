
Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  get 'topics/index'
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics do
    resources :comments
  end

  get 'favorites/index' 
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get 'comments/index'
  post '/comments', to: 'comments#create'
  
end