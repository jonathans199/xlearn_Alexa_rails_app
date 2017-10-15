# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
spanish_course = Course.new(course_name: "Spanish", description: "Spanish also called Castillian, is a Romance language that originated in the Castile region of Spain and today has hundreds of millions of native speakers around the world. ")
spanish_course.save!
spanish_questions = [
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project1_compressed.mp3",
    answer: "no this is my 1st time here"
  },
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project2_compressed.mp3",
    answer: "sure why not"
  },
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project3_compressed.mp3",
    answer: "sounds good I would like some steak"
  },
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project4_compressed.mp3",
    answer: "medium rare"
  },
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project5_compressed.mp3",
    answer: "just some water please"
  },
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project6_compressed.mp3",
    answer: "great"
  },
  {
    question: "https://s3.amazonaws.com/xlearnaudio/project7_compressed.mp3",
    answer: "no just bring the check please"
  }
]

spanish_questions.each do |sq|
  Question.create!(introduction: nil,
            question: sq[:question],
            answer: sq[:answer],
            course_id: spanish_course.id
            )
end






#
#
#

Course.create(course_name: "Ukrainian", description: "The official language of Ukraine is Ukrainian, an East Slavic language which is the native language of 67.5% of Ukraine's population.")
Course.create(course_name: "Portuguese", description: "Portuguese is a western Romance language and the sole official language of Portugal, Brazil, Cape Verde, Guinea-Bissau, Mozambique, Angola, and São")
Course.create(course_name: "German", description: "German language, German Deutsch, official language of both Germany and Austria and one of the three official languages of Switzerland.")
Course.create(course_name: "French", description: "French is a Romance language of the Indo-European family. It descended from the Vulgar Latin of the Roman Empire, as did all Romance languages.")
Course.create(course_name: "Italian", description: "Italian is a Romance language. By most measures, Italian, together with Sardinian, is the closest to Latin of the Romance languages.")

puts "Seed file completed! :)"
