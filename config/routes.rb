Rails.application.routes.draw do


  root 'pages#home'
  get  'about', to: 'pages#about'

  resources :articles
  #da la opcion de agregar, eliminar, editar, etc elementos en los articulos


end
