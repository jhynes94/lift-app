class AddBelongsToForExercise < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :workouts, foreign_key: true
  end
end
