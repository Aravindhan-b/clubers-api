class CreateDjs < ActiveRecord::Migration[7.1]
  def change
    create_table :djs do |t|
      t.string :name
      t.string :genre, default: [], array: true
      t.boolean :active
      t.string :contact_number
      t.integer :price_per_hour
      t.string :address
      t.string :availablity_hour
      t.string :availablity_days

      t.timestamps
    end
  end
end
