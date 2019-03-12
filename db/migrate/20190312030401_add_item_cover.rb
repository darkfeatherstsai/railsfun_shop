class AddItemCover < ActiveRecord::Migration[5.2]
  def up
    add_attachment :items, :cover
  end

  def down
    remove_attachment :items, :cover
  end
end
