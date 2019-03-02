class CreateChartData < ActiveRecord::Migration[5.2]
  def change
    create_table :chart_data do |t|
      t.integer :chart_id
      t.integer :rank
      t.integer :song_id
      t.string :song_title
      t.string :artist_name
      t.belongs_to :chart, foreign_key: true

      t.timestamps
    end
  end
end
