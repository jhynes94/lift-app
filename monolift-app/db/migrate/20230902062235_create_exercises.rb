class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :order
      t.string :description
      t.integer :sets
      t.integer :min_reps
      t.integer :max_reps
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
