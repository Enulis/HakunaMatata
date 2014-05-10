class AddTokenExpToUser < ActiveRecord::Migration
  def change
    add_column :users, :token_exp, :integer
  end
end
