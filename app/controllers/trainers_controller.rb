class TrainersController < ApplicationController

  def clear_pokemon
    trainer = Trainer.find(params[:id])
    trainer.pokemons.clear  # Or use appropriate logic to remove Pokémon
    redirect_to trainers_path, notice: 'All Pokémon have been removed from the trainer.'
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy
    redirect_to trainers_path, notice: 'Trainer was successfully removed.'
  end

  def index
    @trainers = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      redirect_to trainers_path, notice: 'Trainer was successfully created.'
    else
      render :new
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :image)
  end
end
  