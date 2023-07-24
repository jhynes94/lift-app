# == Schema Information
#
# Table name: phases
#
#  id             :integer          not null, primary key
#  length         :integer
#  name           :string
#  objective      :string
#  order          :integer
#  what_to_expect :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  program_id     :integer          not null
#
# Indexes
#
#  index_phases_on_program_id  (program_id)
#
# Foreign Keys
#
#  program_id  (program_id => programs.id)
#
require "test_helper"

class PhaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
