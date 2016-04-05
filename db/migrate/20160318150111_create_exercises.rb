class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.integer :calories_burned
      t.integer :quantity
      t.integer :reps
      t.string :day
      t.timestamps null: false
      t.references :user, index: true, foreign_key: true
    end
  end
end
