Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  root 'pages#index'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get 'homes/index'
  get 'homes/film'
  get 'homes/theater'
  get 'homes/ask'
  
  resources :users
  resources :topics
  
end
