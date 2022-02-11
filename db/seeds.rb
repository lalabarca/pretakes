# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying users and cars..."
User.destroy_all
Car.destroy_all

puts "Creating users..."
user1 = User.create!(email: 'lala@gmail.com', password: "password")
user2 = User.create!(email: 'toto@gmail.com', password: "password")

puts "Creating cars..."
PHOTOS = %w(https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60
   https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60
    https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60
     https://images.unsplash.com/photo-1489824904134-891ab64532f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60
      https://images.unsplash.com/photo-1494905998402-395d579af36f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60
       https://images.unsplash.com/photo-1549317661-bd32c8ce0db2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60
        https://images.unsplash.com/photo-1541899481282-d53bffe3c35d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60
         https://images.unsplash.com/photo-1502489597346-dad15683d4c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60
         https://images.unsplash.com/photo-1594502225401-a9eab8b405dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVuYXVsdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60
         https://images.unsplash.com/photo-1592805723127-004b174a1798?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHJlbmF1bHR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60
         https://images.unsplash.com/photo-1613390833009-17f210e8c969?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGV1Z2VvdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60
         https://images.unsplash.com/photo-1578102176342-dbaecee78bca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8NHg0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60)
i = 0
12.times do
  new_car = Car.create!(brand: Faker::Vehicle.make, model: Faker::Vehicle.model, address: Faker::Address.city, price_per_day: Faker::Commerce.price(range: 1..100.0, as_string: true), photo_url: PHOTOS[i], year_of_production: (2002..2021).to_a.sample, user: [user1, user2].sample)
  puts "Creating #{new_car.brand} #{new_car.model}"
  i += 1
end

puts "Finished"
