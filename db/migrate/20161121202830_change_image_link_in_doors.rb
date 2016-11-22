class ChangeImageLinkInDoors < ActiveRecord::Migration[5.0]
  def change
    remove_column :doors, :image_link
    add_column :doors, :image_id, :integer
  end
end
