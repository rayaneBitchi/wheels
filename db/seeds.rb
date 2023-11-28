# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# array of 5 colors
Car.destroy_all
require 'open-uri'
require 'json'
colors = %w[red blue green yellow black]
# fecthing the data from cars API using open-uri and json to create 5 cars with model year marke and color
url = 'https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json'
makes_serialized = URI.open(url).read
makes = JSON.parse(makes_serialized)
# creating 5 users with email and password
5.times do
    User.create!(email: Faker::Internet.email,
                 password: Faker::Internet.password)
end
makes['Results'].first(5).each do |make|
    Car.create!(model: make['Model_Name'],
                year: Faker::Vehicle.year,
                color: colors.sample,
                type: make['Make_Name'],
                user: User.all.sample,
                transmission: Faker::Vehicle.transmission)
end



