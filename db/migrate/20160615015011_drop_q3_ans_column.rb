class DropQ3AnsColumn < ActiveRecord::Migration
  def change
  	remove_column :surveys, :q3Ans
  end
end
