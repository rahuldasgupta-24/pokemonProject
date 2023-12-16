class CreatePokemonTrainers < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_trainers do |t|
      t.references :trainer, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
