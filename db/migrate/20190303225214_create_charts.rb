class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :chart_name
      t.references :songs

      t.timestamps
    end
  end
end
