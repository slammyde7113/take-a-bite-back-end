class AddCouponMenuToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :profiles, :coupon_menu, foreign_key: true
  end
end
