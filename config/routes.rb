Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products
  resources :tienda_artesania
  resources :tienda_comidas
  resources :receta
  devise_for :users
  resources :artesania
  get 'welcome/index'
  root 'welcome#index'
  get 'galeriacomida' => 'welcome#galeriacomida'
  get 'galeriaartesanias' => 'welcome#galeriaartesanias'

  get 'contacto' => 'welcome#contacto'
  get 'contactouno' => 'welcome#contactouno'
  get 'contactodos' => 'welcome#contactodos'
  get 'contactotres' => 'welcome#contactotres'
  get 'realidad' => 'welcome#realidad'


  #Salirse de la session
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
