class CreateGenreFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_facts do |t|
      t.text :fact
      t.references :game_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
