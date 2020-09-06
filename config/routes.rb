Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :tasks do
    resource :importants, only: [:create, :destroy]
  end
end
