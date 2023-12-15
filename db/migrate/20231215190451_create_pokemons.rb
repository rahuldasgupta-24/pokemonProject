class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :pokedex_number
      t.string :type
      t.string :move1
      t.string :move2

      t.timestamps
    end
  end
end
