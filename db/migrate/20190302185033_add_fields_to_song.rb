class AddFieldsToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :chart_id, :integer
    add_column :songs, :rank, :integer
  end
end
