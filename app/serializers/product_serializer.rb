class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :discount_percentage
end
