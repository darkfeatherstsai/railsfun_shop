class AddItemCate < ActiveRecord::Migration[5.2]
  def change
    add_column :items , :cate_id , :integer , :null => false
  end
end
