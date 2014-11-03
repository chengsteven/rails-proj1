Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers

  patch 'pokemons/arg1', to: 'pokemons#capture', as: 'capture'
  patch 'pokemons/arg1', to: 'pokemons#damage', as: 'damage'
end
