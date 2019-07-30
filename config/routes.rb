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
  
 

  
  get  'films/new'
  get  '/films', to:'films#index'
  post '/films', to:'films#create'
  
  

  
  resources :users
  resources :topics
end
