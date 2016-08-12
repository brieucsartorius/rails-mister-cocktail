# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
cocktails_attributes = [
  {
    name:         "Cuba Loco",
    photo:    "cubalibre.jpg"
  },
  {
    name:         "White Russian",
    photo:    "whiterussian.jpg"
  },
  {
    name:         "Green Lantern",
    photo:      "greenlantern.jpg"
  }
]
cocktails_attributes.each { |params| Cocktail.create!(params) }


Ingredient.destroy_all
ingredients_attributes = [
  {
    name:         "vodka"
  },
  {
    name:         "whisky"
  },
  {
    name:         "Rhum"
  },
  {
    name:         "minth"
  },
  {
    name:         "lemon"
    },
  {
    name:         "coke"
  },
  {
    name:         "perrier"
  },
  {
    name:         "tequila"
  },
  {
    name:         "milk"
  },
  {
    name:         "ice"
  }
]
ingredients_attributes.each { |params| Ingredient.create!(params) }
