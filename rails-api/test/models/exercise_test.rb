# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  workouts_id :integer
#
# Indexes
#
#  index_exercises_on_workouts_id  (workouts_id)
#
# Foreign Keys
#
#  workouts_id  (workouts_id => workouts.id)
#
require "test_helper"

class ExerciseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
