class CreateSurveysTable < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :deviceId
      t.string :faculty
      t.integer :q1Ans
      t.integer :q2Ans1
      t.integer :q2Ans2
      t.integer :q2Ans3
      t.integer :q2Ans4
      t.integer :q2Ans5
      t.string :q3Ans

      t.timestamps null: false
    end
  end
end

