# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Product.destroy_all
CartProduct.destroy_all
Cart.destroy_all

jonathan = User.create(name: "Jonathan", username: "jonathanx111", password: "1234", personal_discount: 34, email: "jonathanx111@gmail.com", phone_number: "516-375-3280")

alcohol = Product.create(name: "alcohol", price: 54.5, discount_percentage: 32)
blue = Product.create(name: "blue nail polish", price: 32.5, discount_percentage: 0)
pink = Product.create(name: "pink nail polish", price: 456.5, discount_percentage: 54)
purple = Product.create(name: "purple nail polish", price: 2.5, discount_percentage: 23)

cart1 = Cart.create(user_id: jonathan.id, purchased: true)
cart2 = Cart.create(user_id: jonathan.id, purchased: false)

CartProduct.create(cart_id: cart1.id, product_id: alcohol.id)
CartProduct.create(cart_id: cart1.id, product_id: blue.id)
CartProduct.create(cart_id: cart2.id, product_id: pink.id)
CartProduct.create(cart_id: cart2.id, product_id: purple.id)