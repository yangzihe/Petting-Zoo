Rails.application.routes.draw do
  root 'zoo#index'
  get 'pen', to: 'pen#index'
  get 'pen/new'
  get 'animals', to: 'animals#index'

  resources :pen
end
