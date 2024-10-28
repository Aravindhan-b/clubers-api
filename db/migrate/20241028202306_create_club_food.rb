class CreateClubFood < ActiveRecord::Migration[7.1]
  def change
    create_table :club_foods do |t|
      t.references :club, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.integer :price
      t.integer :discount
      t.boolean :active
      t.string :ingredients

      t.timestamps
    end
  end
end
