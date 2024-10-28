class CreateSignatureDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :signature_drinks do |t|
      t.string :name
      t.string :ingredients
      t.string :types, default: [], array: true
      t.integer :price
      t.integer :discount
      t.string :category

      t.timestamps
    end
  end
end
