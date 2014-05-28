Poupon::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, defaults:{format: 'json'} do
    resources :deals, only: [:index, :show]
  end

  root 'site#index'
end
