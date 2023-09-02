# == Schema Information
#
# Table name: workouts
#
#  id          :integer          not null, primary key
#  name        :string
#  order       :integer
#  description :string
#  phase_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
