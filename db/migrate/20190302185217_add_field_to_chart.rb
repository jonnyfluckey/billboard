class AddFieldToChart < ActiveRecord::Migration[5.2]
  def change
    add_column :charts, :rank, :integer
  end
end
