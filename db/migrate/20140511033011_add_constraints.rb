class AddConstraints < ActiveRecord::Migration
  def change
  	change_column :users, :email, :string, {null: false, unique: true}
  	change_column :users, :hashed_passwords, :string, null: false
  end
end
