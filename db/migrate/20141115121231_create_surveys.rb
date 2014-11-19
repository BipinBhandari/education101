class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :email
      t.boolean :q1
      t.integer :q2
      t.boolean :q3
      t.boolean :q4
      t.boolean :q5
      t.integer :q6
      t.boolean :q7
      t.boolean :q8
      t.boolean :q9
      t.boolean :q10
      t.integer :q11
      t.string :q12
      t.timestamps
    end
  end
end
