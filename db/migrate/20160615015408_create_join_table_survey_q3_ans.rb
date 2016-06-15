class CreateJoinTableSurveyQ3Ans < ActiveRecord::Migration
  def change
    create_join_table :surveys, :q3Ans do |t|
      # t.index [:survey_id, :q3_an_id]
      # t.index [:q3_an_id, :survey_id]
    end
  end
end
