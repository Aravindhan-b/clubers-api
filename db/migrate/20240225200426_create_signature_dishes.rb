class CreateSignatureDishes < ActiveRecord::Migration[7.1]
  def change
    create_table :signature_dishes do |t|
      t.string :name
      t.string :style
      t.float :rating
      t.integer :price
      t.integer :discount

      t.timestamps
    end
  end
end
