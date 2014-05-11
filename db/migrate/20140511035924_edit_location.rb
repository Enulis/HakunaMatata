class EditLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :country, :string, null: false, default: "Unknown"
  	add_column :locations, :cost, :integer, null: false, default: "0"
  	add_column :locations, :name, :string, null: false, default: "Unknown"
  end
end
