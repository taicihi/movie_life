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
  
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
  
end
