require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

20.times do
  search_terms = ["house", "apartment", "flat", "home", "residence"]
  Flat.create!(
    name: Faker::Lorem.sentence(word_count: 3),
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price_per_night: rand(50..200),
    number_of_guests: rand(1..6),
    picture_url: "https://source.unsplash.com/1600x900/?#{search_terms.sample}"
  )
end

puts "Flats created!"
