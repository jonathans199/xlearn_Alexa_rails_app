# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
Course.create(course_name: "Spanish", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "German", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "Italian", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "Ukrainian", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "Portuguese", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "French", description: "Far far away, behind the word mountains, far from the countries Vokalia..")

puts "Seed file completed! :)"
