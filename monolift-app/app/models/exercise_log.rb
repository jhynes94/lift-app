# == Schema Information
#
# Table name: exercise_logs
#
#  id         :integer          not null, primary key
#  reps       :integer
#  weight     :integer
#  failure    :boolean          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ExerciseLog < ApplicationRecord
  belongs_to :user
end
