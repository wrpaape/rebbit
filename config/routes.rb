Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about', as: 'about'
  post 'votes', to: 'votes#create', as: 'votes'
  post 'users', to: 'users#create', as: 'create_user'
  post 'subrebbits', to: 'subrebbits#create', as: 'create_subrebbit'

  resources :users, :posts, :comments, :subrebbits

  get  'login', to: 'sessions#new',    as: 'login'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'welcome#index'
end
