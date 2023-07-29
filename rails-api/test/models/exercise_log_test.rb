# == Schema Information
#
# Table name: exercise_logs
#
#  id         :integer          not null, primary key
#  failure    :boolean          not null
#  reps       :integer
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_exercise_logs_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class ExerciseLogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
