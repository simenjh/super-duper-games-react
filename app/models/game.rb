class Game < ApplicationRecord
  has_many :playthroughs

  has_one_attached :list_image
  has_one_attached :hero_image
  has_one_attached :mascot_image

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :hero_description, presence: true, length: { maximum: 200 }
  validates :description, presence: true, length: { maximum: 1000 }
end
