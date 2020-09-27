class Game < ApplicationRecord
  has_one_attached :list_image
  has_one_attached :hero_image

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :hero_headline, presence: true, length: { maximum: 50 }
  validates :hero_description, presence: true, length: { maximum: 200 }
end
