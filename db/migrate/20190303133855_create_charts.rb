class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :chart_name
      t.integer :rank
      t.integer :song_id
      t.string :song_title
      t.string :artist_name

      t.timestamps
    end
  end
end
