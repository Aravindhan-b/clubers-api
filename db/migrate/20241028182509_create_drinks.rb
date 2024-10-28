class CreateDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :ingredients
      t.integer :price
      t.integer :discount
      t.boolean :active
      t.string :category

      t.timestamps
    end
  end
end
