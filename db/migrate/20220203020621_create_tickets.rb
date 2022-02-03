class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.decimal :price
      t.integer :event_id

      t.timestamps
    end
  end
end
