class RemoveGenreIdfromGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :genre_id, :integer
  end
end
