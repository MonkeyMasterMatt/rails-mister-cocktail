require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# Cocktail.create(name: "Bloody Mary")
# Cocktail.create(name: "White Russian")
# Cocktail.create(name: "Blue Lagoon")

# Dose.create(description: "2c of lemon")
# Dose.create(description: "1 bottle of vodka")
# Dose.create(description: "1 tbsp of ginger")
buffer = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
result = JSON.parse(buffer)
result["drinks"].each do |n|
    Ingredient.create(name: n["strIngredient1"])
end


# puts "this is #{json}"
