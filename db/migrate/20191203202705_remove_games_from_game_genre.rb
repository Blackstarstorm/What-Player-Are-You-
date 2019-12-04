class RemoveGamesFromGameGenre < ActiveRecord::Migration[6.0]
  def change

    remove_column :game_genres, :game, :text
  end
end
