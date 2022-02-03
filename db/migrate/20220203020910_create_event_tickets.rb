class CreateEventTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :event_tickets do |t|
      t.integer :ticket_id
      t.integer :user_id

      t.timestamps
    end
  end
end
