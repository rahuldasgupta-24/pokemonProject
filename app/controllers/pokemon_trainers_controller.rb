class PokemonTrainersController < ApplicationController

    def new
      if Pokemon.exists?
        @trainer = Trainer.find(params[:trainer_id])
        @pokemon_trainer = PokemonTrainer.new
        @pokemons = Pokemon.all
      else
        redirect_to trainers_path, alert: 'You need to create Pokémon first.'
      end
    end
  
    def create
      @pokemon_trainer = PokemonTrainer.new(pokemon_trainer_params)
      if @pokemon_trainer.save
        redirect_to trainers_path, notice: 'Pokémon assigned successfully.'
      else
        render :new
      end
    end
  
    private
  
    def pokemon_trainer_params
      params.require(:pokemon_trainer).permit(:trainer_id, :pokemon_id)
    end
  end
  