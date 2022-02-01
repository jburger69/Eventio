class ChangeDataTypeForEvents < ActiveRecord::Migration[6.1]
  def self.up
    change_table :events do |t|
      t.change :date, :date
    end
  end
  def self.down
    change_table :tablename do |t|
      t.change :date, :string
    end
  end
end
