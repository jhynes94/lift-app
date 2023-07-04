class Phase < ApplicationRecord
  belongs_to :program
  has_many :workouts
end
