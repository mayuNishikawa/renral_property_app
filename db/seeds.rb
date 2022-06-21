# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |n|
  property_name = Faker::Creature::Cat.name
  rent = Faker::Number.number(digits: 5)
  address = Faker::Address.full_address
  property_age = Faker::Number.number(digits: 2)
  notes = Faker::Quote.famous_last_words
  Property.create!(property_name: property_name,
                  rent: rent,
                  address: address,
                  property_age: property_age,
                  notes: notes,
                  )
  track_name = Faker::Superhero.name
  station_name = Faker::Address.city
  walking_time = Faker::Number.number(digits: 2)
  ClosestStation.create!(track_name: track_name,
                        station_name: station_name,
                        walking_time: walking_time,
                      )
end