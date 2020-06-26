Rails.application.routes.draw do
  get 'comments/new'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/help'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  
  get 'comments', to: 'comments#new'
  post 'comments', to: 'comments#create'
  
  
end

  
  






