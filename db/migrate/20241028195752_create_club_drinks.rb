class CreateClubDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :club_drinks do |t|
      t.references :club, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true
      t.string :ingredients
      t.integer :price
      t.integer :discount
      t.boolean :active

      t.timestamps
    end
  end
end
