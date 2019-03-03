class CreateTop100eurs < ActiveRecord::Migration[5.2]
  def change
    create_table :top100eurs do |t|
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
