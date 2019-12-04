class RemoveImgUrlsFromGameGenre < ActiveRecord::Migration[6.0]
  def change

    remove_column :game_genres, :img_url, :text
  end
end
