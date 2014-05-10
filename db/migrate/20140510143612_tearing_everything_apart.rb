class TearingEverythingApart < ActiveRecord::Migration
  def change

  	remove_column :users, :name
  	remove_column :users, :image_url

  end
end
