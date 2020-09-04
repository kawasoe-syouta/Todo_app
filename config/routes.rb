Rails.application.routes.draw do
  get 'home/index'
  root 'tasks#index'
  resources :tasks
end
