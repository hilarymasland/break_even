class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :image_url
      t.integer :quantity
      t.integer :calorie
      t.references :day, index: true, foreign_key: true
    end
  end
end
