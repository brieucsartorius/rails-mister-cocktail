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
    name:        "Cuba Loco",
    remote_photo_url: "http://l-anecdote.com/wp-content/uploads/2015/01/cocktail-cuba-libre-810x543.jpg"
  },
  {
    name:         "White Russian",
    remote_photo_url:    "http://liquor.s3.amazonaws.com/wp-content/uploads/2011/09/02120028/white-russian-720x720-recipe.jpg"
  },
  {
    name:         "Green Lantern",
    remote_photo_url:      "https://s3.amazonaws.com/liquor/wp-content/uploads/2016/01/14213724/Medicinal-cocktails-Green-Juice-green-juice-margarita-720x480-inline.jpg"
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
