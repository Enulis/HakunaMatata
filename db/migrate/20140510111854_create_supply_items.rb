class CreateSupplyItems < ActiveRecord::Migration
  def change
    create_table :supply_items do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
