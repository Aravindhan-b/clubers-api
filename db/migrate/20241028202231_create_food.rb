class CreateFood < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :veg
      t.string :style

      t.timestamps
    end
  end
end
