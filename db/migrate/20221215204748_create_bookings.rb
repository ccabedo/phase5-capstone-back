class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :review
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
