# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

10.times do 
    url = URI.parse(Faker::LoremFlickr.image(search_terms: ['house']))
    filename = File.basename(url.path)
    file = URI.open(url)
   house = House.create(
        {
            title: Faker::Address.community,
            description: Faker::Lorem.paragraph,
            rent: Faker::Number.between(from: 1000, to: 4000)
        }
    )
    house.image.attach(io: file, filename: filename)
end