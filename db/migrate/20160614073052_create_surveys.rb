class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :deviceId
      t.string :faculty
      t.integer :q1Ans
      t.text :q2Ans
      t.string :q3Ans

      t.timestamps null: false
    end
  end
end
