class CreateOccations < ActiveRecord::Migration[7.1]
  def change
    create_table :occations do |t|
      t.string :name
      t.integer :special_discounts
      t.string :special_discount_for
      t.string :genre, default: [], array: true

      t.timestamps
    end
  end
end
