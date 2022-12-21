class RenameFavoriteTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :reviews, :favorite
  end
end
