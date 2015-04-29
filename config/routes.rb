Rails.application.routes.draw do
  root 'zoo#index'
  get 'pen', to: 'pen#index'
  get 'pen/new'

  resources :pen
end
