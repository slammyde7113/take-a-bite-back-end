class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user, :menu_item, :coupon_menu
  has_one :user
  has_one :menu_item
  has_one :coupon_menu
end
