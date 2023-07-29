# == Schema Information
#
# Table name: progressions
#
#  id         :integer          not null, primary key
#  exercise   :integer
#  phase      :integer
#  set        :integer
#  workout    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  program_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_progressions_on_program_id  (program_id)
#  index_progressions_on_user_id     (user_id)
#
# Foreign Keys
#
#  program_id  (program_id => programs.id)
#  user_id     (user_id => users.id)
#
require "test_helper"

class ProgressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
