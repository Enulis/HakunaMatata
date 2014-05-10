class SveUPm < ActiveRecord::Migration
  def change
  	remove_column :users, :facebook_id
  	remove_column :users, :token
  	remove_column :users, :token_exp
  	add_column :users, :name, :string
  	add_column :users, :surname, :string
  	add_column :users, :email, :string
  	add_column :users, :hashed_passwords, :string
  	drop_table :event_guests
  end
end
