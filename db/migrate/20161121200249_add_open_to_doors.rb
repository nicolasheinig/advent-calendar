class AddOpenToDoors < ActiveRecord::Migration[5.0]
  def change
    add_column :doors, :open, :boolean
  end
end
