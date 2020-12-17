# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Getting ready for seeds"
ingredients = []
100.times { ingredients << Faker::Food.ingredient }
ingredients.uniq!
puts "Deleting ingredients"
Ingredient.destroy_all
puts "Adding ingredients"
ingredients.each do |ingredient|
  Ingredient.create!({
    name: ingredient
  })
end
puts "finished"

puts "Destroying all recipes from DB..."
Recipe.destroy_all
puts "Creating recipes"
recipes = []
100.times { recipes << Faker::Food.dish }
recipes.uniq!
recipes.each do |recipe|
  Recipe.create!({
    name: recipe,
    description: Faker::Food.description
  })
end