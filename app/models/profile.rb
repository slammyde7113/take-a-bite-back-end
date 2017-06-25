class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :menu_item
  belongs_to :coupon_menu
end
