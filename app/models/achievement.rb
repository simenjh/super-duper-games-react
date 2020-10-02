class Achievement < ApplicationRecord
  has_and_belongs_to_many :users

  has_one_attached :image

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
