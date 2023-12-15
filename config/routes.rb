Rails.application.routes.draw do
  root 'pokemons#index' # Set homepage to display page for pokemon
  resources :pokemons, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end

