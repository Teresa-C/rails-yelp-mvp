puts "Cleaning database..."
Restaurant.destroy_all

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end
puts "Finished"
