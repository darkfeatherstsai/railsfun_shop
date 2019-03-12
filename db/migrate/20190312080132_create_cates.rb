class CreateCates < ActiveRecord::Migration[5.2]
  def change
    create_table :cates do |t|

      t.timestamps
    end
  end
end
