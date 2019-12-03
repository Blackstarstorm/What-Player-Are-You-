class CreateGameGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :game_genres do |t|
      t.string :genre
      t.text :description
      t.text :facts
      t.string :game
      t.text :img_url

      t.timestamps
    end
  end
end
