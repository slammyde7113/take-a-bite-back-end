class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user, :menu_item
  has_one :user
  has_one :menu_item
end
