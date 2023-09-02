class CreateExerciseLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_logs do |t|
      t.integer :reps
      t.integer :weight
      t.boolean :failure, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
