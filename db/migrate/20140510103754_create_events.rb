class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.datetime :date
      t.float :lon
      t.float :lat

      t.timestamps
    end
  end
end
