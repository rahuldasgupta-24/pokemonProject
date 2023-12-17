class PokemonsController < ApplicationController
    
    def destroy
      @pokemon = Pokemon.find(params[:id])

      # Check if the Pokémon is assigned to any trainers
      if @pokemon.trainers.any?
        redirect_to pokemons_path, alert: 'Cannot delete Pokémon because it is assigned to a trainer. Please first delete the associated trainer.'
      else
        @pokemon.destroy
        redirect_to pokemons_path
      end
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end
    
    def update
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.update(pokemon_params)
            redirect_to pokemons_path
        else
            render :edit
        end
    end

    def index
        @pokemons = Pokemon.all
    end

    def new
      @pokemon = Pokemon.new
    end
  
    def create
      @pokemon = Pokemon.new(pokemon_params)
      if @pokemon.save
        redirect_to @pokemon
      else
        render :new
      end
    end
  
    def show
      @pokemon = Pokemon.find(params[:id])
    end
  
    private
  
    def pokemon_params
        params.require(:pokemon).permit(:name, :pokedex_number, :typing, :move1, :move2, :image)
    end
end
  