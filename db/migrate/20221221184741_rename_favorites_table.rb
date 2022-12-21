class RenameFavoritesTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :favorite, :favorites
  end
end
