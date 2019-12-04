class RemoveFactsFromGameGenre < ActiveRecord::Migration[6.0]
  def change

    remove_column :game_genres, :facts, :text
  end
end
