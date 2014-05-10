class AddTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :toke, :string
  end
end
