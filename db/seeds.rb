# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating Restaurant..."
restaurants = [
  {
   name:          "Mamma Roma",
   address:       "90 Rue Oberkampf, 75011 Paris, France",
   phone_number:  "0190564689",
   category:      "italian"
  },
  {
   name:          "Bocamexa",
   address:       "95 Rue Oberkampf, 75011 Paris, France",
   phone_number:  "0190564685",
   category:      "mexican"
  },
  {
   name:          "Yemma",
   address:       "119 Rue du Chemin Vert, 75011, Paris",
   phone_number:  "0190564686",
   category:      "moroccan"
  },
  {
   name:          "Paris Hanoï",
   address:       "74 Rue de Charonne, 75011, Paris",
   phone_number:  "0190564687",
   category:      "thai"
  },
  {
   name:          "Zaatar",
   address:       "43 Rue de Montreuil, 75011, Paris",
   phone_number:  "0190564688",
   category:      "lebanese"
  }
]

Restaurant.create!(restaurants)

puts "Finished!"
