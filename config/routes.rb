Rails.application.routes.draw do
  get 'targets/show'
  get 'targets/index'
  post 'targets/index'
  get 'species/index'
  get 'species/show'
  get 'hunters/index'
  get 'hunters/show'
  get 'schedules/create_order'
  post 'schedules/create_order'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :species, only: [:index, :show]
  resources :hunters, only: [:index, :show] do
    member do
      post :add_to_cart, :update_quantity
    end
  end
  resources :targets, only: [:index, :show] do
    member do
      post :add_to_cart, :get_category
    end
  end

  get ':permalink', to: 'pages#permalink'

  root to: 'targets#index'


end
