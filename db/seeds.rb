# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
Car.destroy_all

puts "creating cars..."

Car.create(name: 'Volvo', model: 'C40 Recharge', price: 1000)
Car.create(name: 'Chevrolet', model: 'Camaro', price: 1500)
Car.create(name: 'Toyota', model: 'Camri', price: 900)
Car.create(name: 'Honda', model: 'Accord', price: 1500)
Car.create(name: 'Hyundai', model: 'Accent', price: 700)

puts "finished"
