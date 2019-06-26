Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get 'homes/index'
  get 'homes/film'
  get 'homes/theater'
  get 'homes/ask'
end
