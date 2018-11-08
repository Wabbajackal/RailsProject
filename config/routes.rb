Rails.application.routes.draw do
  get 'species/index'
  get 'species/show'
  get 'hunters/index'
  get 'hunters/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
