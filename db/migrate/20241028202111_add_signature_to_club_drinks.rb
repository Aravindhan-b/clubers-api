class AddSignatureToClubDrinks < ActiveRecord::Migration[7.1]
  def change
    add_column :club_drinks, :signature, :boolean
  end
end
