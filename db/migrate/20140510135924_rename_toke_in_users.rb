class RenameTokeInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :toke, :token
  end
end
