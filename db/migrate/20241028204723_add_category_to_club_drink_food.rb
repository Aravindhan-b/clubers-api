class AddCategoryToClubDrinkFood < ActiveRecord::Migration[7.1]
  def change
    add_column :clubs, :category, :string
    add_column :foods, :category, :string
  end
end
