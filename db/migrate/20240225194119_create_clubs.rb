class CreateClubs < ActiveRecord::Migration[7.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :owner_name
      t.string :address
      t.string :city
      t.string :near_by_landmark
      t.integer :stag_entry
      t.integer :couple_entry
      t.integer :ladies_entry
      t.boolean :active
      t.integer :price_per_person
      t.string :contact_number
      t.integer :discount
      t.datetime :opening_time
      t.datetime :closing_time

      t.timestamps
    end
  end
end
