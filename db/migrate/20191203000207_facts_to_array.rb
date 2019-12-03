class FactsToArray < ActiveRecord::Migration[6.0]
  def change
    change_column :game_genres, :facts, :text, array: true, using: "(string_to_array(facts, ','))"
    change_column :game_genres, :game, :text, array: true, using: "(string_to_array(game, ','))"
    change_column :game_genres, :img_url, :text, array: true, using: "(string_to_array(img_url, ','))"
  end
end
