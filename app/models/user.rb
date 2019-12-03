class User < ApplicationRecord
  has_many :games
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }
end
