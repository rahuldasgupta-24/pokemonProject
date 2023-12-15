class RenameTypeToTypingInPokemons < ActiveRecord::Migration[6.0]
  def change
    rename_column :pokemons, :type, :typing
  end
end

