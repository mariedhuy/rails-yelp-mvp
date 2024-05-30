require 'faker'

Restaurant.destroy_all
puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: Restaurant::CATEGORIES.sample
  )
  restaurant.save!
end
puts 'Finished!'
