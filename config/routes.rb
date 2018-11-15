Rails.application.routes.draw do
  get 'targets/show'
  get 'targets/index'
  get 'species/index'
  get 'species/show'
  get 'hunters/index'
  get 'hunters/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :hunters, only: [:index, :show]
  resources :species, only: [:index, :show]
  resources :targets, only: [:index, :show]
  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  root to: 'targets#index'

end
