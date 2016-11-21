class CreateDoors < ActiveRecord::Migration[5.0]
  def change
    create_table :doors do |t|
      t.text :text
      t.string :image_link
      t.integer :day

      t.timestamps
    end
  end
end
