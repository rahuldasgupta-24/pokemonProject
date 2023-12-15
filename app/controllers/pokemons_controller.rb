class PokemonsController < ApplicationController
    
    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        redirect_to pokemons_url, notice: 'Pokemon was successfully released.'
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end
    
    def update
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.update(pokemon_params)
            redirect_to pokemons_path, notice: 'Pokemon was successfully updated.'
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
  