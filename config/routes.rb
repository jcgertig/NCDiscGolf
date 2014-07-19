Rails.application.routes.draw do
  resources :games

  root 'pages#index'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
