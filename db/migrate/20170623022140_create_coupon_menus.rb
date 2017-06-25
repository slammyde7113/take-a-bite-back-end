class CreateCouponMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :coupon_menus do |t|
      t.integer :price
      t.string :name
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
