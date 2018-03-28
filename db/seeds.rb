# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
Restaurant.create!(
  name: Faker::Hipster.sentence(3),
  address: ['Nantes', 'Paris', 'London', 'Seattle', 'Brussels'].sample,
  phone_number: Faker::PhoneNumber.phone_number,
  category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
)
end

puts 'Creating reviews...'
10.times do
Review.create!(
  restaurant_id: [0, 1, 2, 3, 4, 5].sample,
  content: Faker::Hipster.sentence(4),
  rating: [0, 1, 2, 3, 4, 5].sample,
)
end

puts 'Finished!'
