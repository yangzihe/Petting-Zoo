Rails.application.routes.draw do
  root 'zoo#index'
  get 'pen', to: 'pen#index'
  get 'pen/new'


  #get 'animals', to: 'animals#index'


  #get 'animals', to: 'animals#index'

  devise_for :persons
  get 'person', to: 'person#index'

  resources :pen
end
