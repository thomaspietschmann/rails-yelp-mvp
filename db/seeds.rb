require 'faker'

categories = %w[chinese italian japanese french belgian]

Restaurant.destroy_all

50.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.cell_phone,
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    category: categories.sample
  )
  restaurant.save
end
