Rails.application.routes.draw do
  resources :weeks
 	root 'dashboard/tasks#index'
 
  devise_for :users

  get '/dashboard', to: 'dashboard/tasks#index'
  namespace :dashboard do
    resources :tasks
  end
end
