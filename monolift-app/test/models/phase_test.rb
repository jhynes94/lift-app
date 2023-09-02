# == Schema Information
#
# Table name: phases
#
#  id             :integer          not null, primary key
#  name           :string
#  order          :integer
#  objective      :string
#  what_to_expect :string
#  duration_days  :integer
#  program_id     :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class PhaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
