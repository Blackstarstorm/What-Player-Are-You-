class Game < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :game_genre, optional: true
end
