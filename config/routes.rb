Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  patch '/capture', to: 'pokemons#capture', as: 'capture'
  patch '/damage', to: 'pokemons#damage', as: 'damage'
  post '/pokemon', to: 'pokemons#create'
  get '/pokemon/new', to: 'pokemons#new', as: 'new_pokemon'

end
