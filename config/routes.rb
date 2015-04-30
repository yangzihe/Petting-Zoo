Rails.application.routes.draw do
  devise_for :people
  root to: 'zoo#index'
  get 'pen/new', to: 'pen#new'
  post 'pen/create', to: 'pen#create'


  resources :pen do
    resources :animals
  end

  resources :person

  post 'interactions/create', to: 'interactions#create'

end
