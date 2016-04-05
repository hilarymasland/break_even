class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :image_url
      t.integer :calories_burned
      t.integer :quantity
      t.integer :reps
      t.text :notes
      t.belongs_to :training, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
