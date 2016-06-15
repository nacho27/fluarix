class AddUniqueIndex < ActiveRecord::Migration
  def change
  	add_index :surveys, [:deviceId, :faculty], :unique => true
  end
end
