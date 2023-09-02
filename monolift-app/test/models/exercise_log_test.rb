# == Schema Information
#
# Table name: exercise_logs
#
#  id         :integer          not null, primary key
#  reps       :integer
#  weight     :integer
#  failure    :boolean          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ExerciseLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
