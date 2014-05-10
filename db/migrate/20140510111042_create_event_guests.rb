class CreateEventGuests < ActiveRecord::Migration
  def change
    create_table :event_guests do |t|
      t.user_id :integer
      t.event_id :integer

      t.timestamps
    end
  end
end
