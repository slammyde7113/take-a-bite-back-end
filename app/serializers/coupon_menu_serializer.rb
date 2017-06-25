class CouponMenuSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :description, :location
end
