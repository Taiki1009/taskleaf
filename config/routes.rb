Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # /loginを他のメソッドでも呼び出す場合に使用する
  # match '/login', to: 'sessions#create', via: [:post, :patch, :delete]

  namespace :admin do
    resources :users
  end
  root to: 'tasks#index'
  
  # resourcesを１つのメソッドのみで使用したい場合
  # resource :tasks, only: [:index]
  # resources :tasks, except: [:delete, :patch, :edit]

  resources :tasks do
    post :confirm, action: :confirm_new, on: :new
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
