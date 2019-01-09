Rails.application.routes.draw do


  root 'pages#home'
  get  'about', to: 'pages#about'

  resources :articles
  #da la opcion de agregar, eliminar, editar, etc elementos en los articulos

  get 'signup', to: 'users#new'

  resources :users, except: [:new]



  get 'login', to: 'sessions#new' #controlls session of user
  post 'login', to: 'sessions#create' #create user's session
  delete 'logout', to:'sessions#destroy' #destroy the user's session



end
