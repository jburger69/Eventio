class EventAttendence < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendences do |t|
      t.integer :event_attendence_id
      t.integer :attended_event_id

      t.timestamps
    end
  end
end
