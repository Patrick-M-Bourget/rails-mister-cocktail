# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "Bourbon")
Ingredient.create(name: "Dry vermouth")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Wet vermouth")
Ingredient.create(name: "Orange rind")
Ingredient.create(name: "Ginger beer")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Kalua")
Ingredient.create(name: "Lime juice")

cocktails = Cocktail.create([
    { name: 'Old fashioned' },
    { name: 'Martini' },
    { name: 'Gin Gimlet' },
    { name: 'White Russian' },
    { name: 'Moscow Mule' }
])
