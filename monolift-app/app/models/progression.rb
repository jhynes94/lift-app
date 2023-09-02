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
class Progression < ApplicationRecord
  belongs_to :program
  belongs_to :user
end
