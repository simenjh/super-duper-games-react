class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end
