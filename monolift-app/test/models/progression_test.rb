# == Schema Information
#
# Table name: progressions
#
#  id         :integer          not null, primary key
#  phase      :integer
#  workout    :integer
#  exercise   :integer
#  set        :integer
#  program_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ProgressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
