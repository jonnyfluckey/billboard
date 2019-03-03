class CreateTop100us < ActiveRecord::Migration[5.2]
  def change
    create_table :top100us do |t|
      t.integer :chart_id
      t.integer :song_id
      t.integer :artist_id
      t.integer :rank
      t.references :songs
      t.references :artists

      t.timestamps
    end
  end
end
