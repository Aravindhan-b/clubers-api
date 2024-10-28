class AddReferenceClubWithOccation < ActiveRecord::Migration[7.1]
  def change
    add_reference :occations, :club, null: false, foreign_key: true
  end
end
