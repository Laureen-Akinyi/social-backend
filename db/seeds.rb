# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding users"
    users = User.create([
    { 
        username: "Laureen Akinyi",
        email: "laureen.akinyi@gmail.com",
        password: "123",
    },
    { 
        username: "Reginal Spector",
        email: "reginald.spector@gmail.com",
        password: "123" 
    }])
puts "done seeding users"
