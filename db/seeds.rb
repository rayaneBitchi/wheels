# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a user
Booking.destroy_all
Listing.destroy_all
Car.destroy_all
User.destroy_all

lena = User.create!(email: "lena@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Lena", last_name: "Smith", phone_number: "1234567890")
romar = User.create!(email: "romare@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Romar", last_name: "Smith", phone_number: "1234567890")
rayane = User.create!( email: "rayane@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Rayane", last_name: "Smith", phone_number: "1234567890")

lenaCar = Car.new(model: "Civic",year: 2020,make: "Honda",color: "blue", transmission: "Automatic")
lenaCar.user = lena
lenaCar.save

romarCar = Car.new(  model: "Renault",
  year: 2021,
  make: "Clio V",
  color: "black",
  user_id: 31,
transmission: "Manual")
romarCar.user = romar
romarCar.save

rayaneCar = Car.new( model: "Dacia",
  year: 2021,
  make: "SPRING",
  color: "red",
transmission: "Automatic")
rayaneCar.user = rayane
rayaneCar.save


# Create a car
romarCar2 = Car.new( id: 4918,
  model: "Accord",
  year: 2020,
  make: "Honda",
  color: "white",
transmission: "Automatic")
romarCar2.user = romar
romarCar2.save

# create listing
listing1 = Listing.new(available: true, price: 75.99, pickup_address: "123 Main St, New York, NY 10001", dropoff_address: "123 Main St, New York, NY 10001")
listing1.user = lena
listing1.car = romarCar
listing1.save

listing2 = Listing.new(available: true, price: 85.99, pickup_address: "123 Main St, New York, NY 10001", dropoff_address: "123 Main St, New York, NY 10001")
listing2.user = romar
listing2.car = lenaCar
listing2.save

listing3 = Listing.new(available: true, price: 60.99, pickup_address: "123 Main St, New York, NY 10001", dropoff_address: "123 Main St, New York, NY 10001")
listing3.user = rayane
listing3.car = rayaneCar
listing3.save

listing4 = Listing.new(available: true, price: 76.99, pickup_address: "123 Main St, New York, NY 10001", dropoff_address: "123 Main St, New York, NY 10001")
listing4.user = romar
listing4.car = romarCar2
listing4.save



# Create 3 a booking
booking1 = Booking.new(pickup_date: "2021-09-01", return_date: "2021-09-03", status: "pending", total_price: 171.98)
booking1.user = lena
booking1.car = listing2.car
booking1.save

booking2 = Booking.new(pickup_date: "2021-09-01", return_date: "2021-09-03", status: "pending", total_price: 171.98)
booking2.user = romar
booking2.car = listing1.car
booking2.save

booking3 = Booking.new(pickup_date: "2021-09-01", return_date: "2021-09-03", status: "pending", total_price: 171.98)
booking3.user = rayane
booking3.car = listing3.car
booking3.save
