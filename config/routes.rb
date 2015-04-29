Rails.application.routes.draw do
  root 'zoo#index'
  get 'pen/new'



  #get 'animals', to: 'animals#index'


  #get 'animals', to: 'animals#index'



  resources :pen

  resources :pen do
    resources :animals
  end


  resources :person

end
