Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons
  patch 'capture', to: 'pokemons#capture', as: :capture
  patch 'damage', to: 'pokemons#damage', as: :damage
  get "pokemons/new", to: "pokemons#new", as: :new
  post "pokemons", to: "pokemons#create"
end
