class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.integer :artist_id
      t.string :artist_name
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :chart, foreign_key: true

      t.timestamps
    end
  end
end
