class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :Artist_id
      t.belongs_to :artists
      t.belongs_to :top100s
      t.belongs_to :top100_us
      t.belongs_to :top100_eurs

      t.timestamps
    end
  end
end
