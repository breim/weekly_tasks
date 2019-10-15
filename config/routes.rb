Rails.application.routes.draw do
 	root 'dashboard/weeks#index'
 
  devise_for :users

  get '/dashboard', to: 'dashboard/weeks#index'
  namespace :dashboard do
    resources :weeks
  end
end
