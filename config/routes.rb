Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about', as: 'about'

  resources :users, :posts, :comments, :subrebbits

  get  'login', to: 'sessions#new',    as: 'login'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'welcome#index'
end
