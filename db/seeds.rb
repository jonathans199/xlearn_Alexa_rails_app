# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
Course.create(course_name: "Spanish", description: "Spanish also called Castillian, is a Romance language that originated in the Castile region of Spain and today has hundreds of millions of native speakers around the world. ")
# Course.create(course_name: "German", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "Ukrainian", description: "The official language of Ukraine is Ukrainian, an East Slavic language which is the native language of 67.5% of Ukraine's population.")
Course.create(course_name: "Portuguese", description: "Portuguese is a western Romance language and the sole official language of Portugal, Brazil, Cape Verde, Guinea-Bissau, Mozambique, Angola, and São")
Course.create(course_name: "German", description: "German language, German Deutsch, official language of both Germany and Austria and one of the three official languages of Switzerland.")
Course.create(course_name: "French", description: "French is a Romance language of the Indo-European family. It descended from the Vulgar Latin of the Roman Empire, as did all Romance languages.")
# Course.create(course_name: "Ukrainian", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
#Course.create(course_name: "Portuguese", description: "Far far away, behind the word mountains, far from the countries Vokalia..")
Course.create(course_name: "Italian", description: "Italian is a Romance language. By most measures, Italian, together with Sardinian, is the closest to Latin of the Romance languages.")

puts "Seed file completed! :)"
