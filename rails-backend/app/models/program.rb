class Program < ApplicationRecord
  has_one_attached :image

  # TODO: Update these
  # validates :name, :description, presence: true
  # validate :image_attached

  private

  def image_attached
    errors.add(:image, "must be attached") unless image.attached?
  end
end
