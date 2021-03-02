class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :purchased
  has_many :products
end
