# == Schema Information
#
# Table name: workouts
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  order       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  phase_id    :integer          not null
#
# Indexes
#
#  index_workouts_on_phase_id  (phase_id)
#
# Foreign Keys
#
#  phase_id  (phase_id => phases.id)
#
require "test_helper"

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
