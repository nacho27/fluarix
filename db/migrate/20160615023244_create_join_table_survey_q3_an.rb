class CreateJoinTableSurveyQ3An < ActiveRecord::Migration
  def change
  	create_join_table :q3_ans, :surveys do |t|
	  t.index :survey_id
	  t.index :q3_an_id
	end
  end
end
