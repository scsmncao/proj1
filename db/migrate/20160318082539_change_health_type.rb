class ChangeHealthType < ActiveRecord::Migration
  def change
  	change_column :pokemons, :health, 'integer USING CAST(pokemons AS integer)'
  end
end
