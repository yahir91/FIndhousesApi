require 'faker'
require 'open-uri'
include Rails.application.routes.url_helpers

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
    house.url = house.image.service_url
    house.save
end