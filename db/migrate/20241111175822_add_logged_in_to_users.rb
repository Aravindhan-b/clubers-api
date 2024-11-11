class AddLoggedInToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :logged_in, :boolean, default: false
    add_column :users, :role, :integer, default: 0
    add_column :users, :jti, :string, null: false
    add_index :users, :jti, unique: true
    add_column :users, :name, :string, null: false
  end
end
