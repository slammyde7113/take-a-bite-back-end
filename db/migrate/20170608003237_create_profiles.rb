class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.references :menu_item, foreign_key: true
      t.references :coupon_menu, foreign_key: true

      t.timestamps
    end
  end
end
