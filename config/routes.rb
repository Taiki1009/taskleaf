Rails.application.routes.draw do
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
