Rails.application.routes.draw do
  root 'zoo#index'
  get 'pen/new'
  resources :pen do
    resources :animals
  end
end
