class GameGenre < ApplicationRecord
  has_many :games
  has_many :genre_facts
  has_many :genre_images
end
