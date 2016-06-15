class SetDefaultValues < ActiveRecord::Migration
  def change
  	change_column_default :surveys, :q2Ans1,  :default => 0
  	change_column_default :surveys, :q2Ans2, :default => 0
  	change_column_default :surveys, :q2Ans3, :default => 0
  	change_column_default :surveys, :q2Ans4, :default => 0
  	change_column_default :surveys, :q2Ans5, :default => 0
  	
  end
end
