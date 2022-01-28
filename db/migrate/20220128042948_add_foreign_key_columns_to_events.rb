class AddForeignKeyColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :creator_id, :integer, foreign_key: true
  end
end
