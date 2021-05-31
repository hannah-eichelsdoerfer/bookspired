# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating default User"
default = User.create(email: "books@gmail.com", password: "123456")

puts "Creating fake Authors"
nicholas = Author.create!(first_name: "Nicholas", last_name:"Sparks")

puts "Creating fake Books"
Book.create!(title: "The Last Song", author: nicholas)

puts "Done"