# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding users"
    User.create({
        user_name: "Laureen Akinyi",
        email: "laureen.akinyi@gmail.com",
        password: "123",
    })
    User.create({
        user_name: "Reginal Spector",
        email: "regi.spector@gmail.com",
        password: "123",
    })
puts "done seeding users"
