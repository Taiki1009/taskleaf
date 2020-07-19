Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    # get 'users/new'
    # get 'users/edit'
    # get 'users/show'
    # get 'users/index'
    resources :users
  end

  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # 上記のルーティングを一括で設定
  # root to: は'/'にアクセスした時のルーティング
  resources :tasks
  root to: 'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
