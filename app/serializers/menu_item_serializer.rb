class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :description, :location
end
