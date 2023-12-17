Rails.application.routes.draw do
  root 'pokemons#index'
  resources :pokemons, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  
  resources :trainers, only: [:index, :new, :create, :show, :destroy] do
    resources :pokemon_trainers, only: [:new, :create]
    member do
      delete :clear_pokemon
    end
  end
end
