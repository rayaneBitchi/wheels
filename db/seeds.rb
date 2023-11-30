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
Car.destroy_all
User.destroy_all

lena = User.create!(email: "lena@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Lena", last_name: "Smith", phone_number: "1234567890")
romar = User.create!(email: "romare@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Romar", last_name: "Smith", phone_number: "1234567890")
rayane = User.create!( email: "rayane@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Rayane", last_name: "Smith", phone_number: "1234567890")

lenaCar = Car.new(model: "Civic",year: 2020,make: "Honda",color: "blue",price: 85.99, transmission: "Automatic")
lenaCar.user = lena
lenaCar.save

romarCar = Car.new(  model: "Renault",
  year: 2021,
  make: "Clio V",
  color: "black",
  price: 45.99,
  user_id: 31,
transmission: "Manual")
romarCar.user = romar
romarCar.save

rayaneCar = Car.new( model: "Dacia",
  year: 2021,
  make: "SPRING",
  color: "red",
  price: 75.99,
transmission: "Automatic")
rayaneCar.user = rayane
rayaneCar.save


# Create a car
romarCar2 = Car.new( id: 4918,
  model: "Accord",
  year: 2020,
  make: "Honda",
  color: "white",
  price: 85.99,
transmission: "Automatic")
romarCar2.user = romar
romarCar2.save
# Create 3 a booking
booking1 = Booking.new(pickup_date: "2021-09-01", return_date: "2021-09-03", status: "pending", pick_up_address: "123 Main St, Toronto, ON M4C 1A5", drop_off_address: "123 Main St, Toronto, ON M4C 1A5", total_price: 171.98)
booking1.user = lena
booking1.car = romarCar
booking1.save

booking2 = Booking.new(pickup_date: "2021-09-01", return_date: "2021-09-03", status: "pending", pick_up_address: "123 Main St, Toronto, ON M4C 1A5", drop_off_address: "123 Main St, Toronto, ON M4C 1A5", total_price: 171.98)
booking2.user = romar
booking2.car = lenaCar
booking2.save

booking3 = Booking.new(pickup_date: "2021-09-01", return_date: "2021-09-03", status: "pending", pick_up_address: "123 Main St, Toronto, ON M4C 1A5", drop_off_address: "123 Main St, Toronto, ON M4C 1A5", total_price: 171.98)
booking3.user = rayane
booking3.car = rayaneCar
booking3.save




