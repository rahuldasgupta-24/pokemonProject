class TrainersController < ApplicationController

  def show
    @trainer = Trainer.find(params[:id])
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy
    redirect_to trainers_path
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
      redirect_to trainers_path
    else
      render :new
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :image)
  end
end
  