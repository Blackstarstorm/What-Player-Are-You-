class CreateGenreImages < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_images do |t|
      t.text :img_url
      t.references :game_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
