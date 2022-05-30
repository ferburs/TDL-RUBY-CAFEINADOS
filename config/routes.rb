Rails.application.routes.draw do
  root 'peliculas#index'
  resources :entradas
  resources :funcions
  resources :usuarios
  resources :salas
  resources :peliculas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
