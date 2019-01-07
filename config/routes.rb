Rails.application.routes.draw do


  root 'pages#home'
  get  'about', to: 'pages#about'

  resources :articles
  #da la opcion de agregar, eliminar, editar, etc elementos en los articulos

  get 'signup', to: 'users#new'

  resources :users, except: [:new]
  #post 'users', to: 'users#create //lo mismo que arriba excluyendo new de users
end
