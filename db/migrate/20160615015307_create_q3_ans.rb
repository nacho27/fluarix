class CreateQ3Ans < ActiveRecord::Migration
  def change
    create_table :q3_ans do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
