class RenameFavoriteToReview < ActiveRecord::Migration[7.0]
  def change
    rename_table :favorites, :reviews
  end
end
