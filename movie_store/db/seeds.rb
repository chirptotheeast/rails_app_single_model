# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Movies"

20.times do
     Blockbuster.create(name: Faker::Movie.title,
                        genre: ['horror', 'fantasy', 'drama', 'comedy'].sample,
                        year_released: rand(1965...2020),
                        award_nominee: ['true', 'false'].sample,
                        quote: Faker::Movie.quote 
                    )
    
end