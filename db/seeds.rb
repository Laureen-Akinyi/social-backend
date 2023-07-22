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
    user_name: "Jessica Pearson",
    email: "suit.pearson@gmail.com",
    password: "123"
  },
  { 
    user_name: "Mike Ross",
    email: "ross.james@gmail.com",
    password: "ross2017",
  }
])
puts "done seeding users"

puts "seeding followers"
users.each do |user|
  Follower.create(user: user)
end
puts "done seeding followers"
