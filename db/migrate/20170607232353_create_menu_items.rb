class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.float :price
      t.string :name
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
