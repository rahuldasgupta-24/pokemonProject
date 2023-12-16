class Trainer < ApplicationRecord
    has_many :pokemon_trainers, dependent: :destroy
    has_many :pokemons, through: :pokemon_trainers

    has_one_attached :image
  
    # Add any other associations or validations you need
  end
  