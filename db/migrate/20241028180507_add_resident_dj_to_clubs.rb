class AddResidentDjToClubs < ActiveRecord::Migration[7.1]
  def change
    add_reference :clubs, :resident_dj, null: false, foreign_key: { to_table: :djs }
  end
end
