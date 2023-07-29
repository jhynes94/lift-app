# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  workouts_id :integer          not null
#
# Indexes
#
#  index_exercises_on_workouts_id  (workouts_id)
#
# Foreign Keys
#
#  workouts_id  (workouts_id => workouts.id)
#
class Exercise < ApplicationRecord
  belongs_to :phase
end
