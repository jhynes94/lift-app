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
class Workout < ApplicationRecord
  has_many :exercises
  belongs_to :phase
end
