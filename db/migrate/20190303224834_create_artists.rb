class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.references :songs
      t.references :top100s
      t.references :top100us
      t.references :top100eurs

      t.timestamps
    end
  end
end
