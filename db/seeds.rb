# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding User data...🙋‍♂️'

User.create(username: 'Ethan', email: 'ethan_rodriguez@yahoo.com', password_digest: 1234)

9.times do
User.create(username: Faker::Internet.username , email: Faker::Internet.email, password_digest: 1234)
end


puts 'Seeding Category data...📂'
10.times do
Category.create(category_name: Faker::Commerce.department(max: 2, fixed_amount: true))
end


puts 'Seeding Items data...🎁'
100.times do
Item.create(item_number: Faker::Barcode.ean , item_name: Faker::Commerce.product_name, description: Faker::Lorem.question(word_count: 10), price: Faker::Commerce.price(range: 0..10.0, as_string: true), img_url: Faker::Avatar.image, qty: rand(5..15), category_id: rand(1..10))
end


puts 'Seeding carts...🛒 🛒 🛒'
20.times do 
Cart.create(user_id: rand(1..4))
end


puts 'Seeding line items...'
20.times do
LineItem.create(cart_id: rand(1..4), item_id: rand(1..4))
end

puts 'Seeding complete....Have a great day!🔥🔥🔥'