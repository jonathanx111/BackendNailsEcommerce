class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :personal_discount, :email, :phone_number
  has_many :carts
end
