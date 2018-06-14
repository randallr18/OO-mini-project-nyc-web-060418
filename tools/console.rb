require_relative '../config/environment.rb'
# require 'bundler/setup'
# Bundler.require
# require_all 'app'

taco = Recipe.new("taco")
sandwhich = Recipe.new("sandwhich")
kimchi = Recipe.new("kimchi")
pizza = Recipe.new("pizza")
burger = Recipe.new("burger")
pasta = Recipe.new("pasta")
salad = Recipe.new("salad")

risher = User.new("Risher")
chang = User.new("Chang")
david = User.new("David")
tashawn = User.new("Tashawn")
devin = User.new("Devin")
jee = User.new("Jee")

num1 = RecipeCard.new(taco, chang, 'monday', 12)
num2 = RecipeCard.new(taco, risher, 'monday', 6)
num3 = RecipeCard.new(taco, jee, 'monday', 5)
num4 = RecipeCard.new(pizza, chang, 'monday', 5)
num5 = RecipeCard.new(burger, chang, 'monday', 10)
num6 = RecipeCard.new(taco, devin, 'monday', 1)
num7 = RecipeCard.new(pizza, devin, 'monday', 3)
num8 = RecipeCard.new(pasta, devin, 'monday', 5)
num9 = RecipeCard.new(pasta, tashawn, 'monday', 8)
num10 = RecipeCard.new(sandwhich, risher, 'monday', 5)

noodle = Ingredient.new("Noodle")
wheat = Ingredient.new("Wheat")
steak = Ingredient.new("Steak")
ham = Ingredient.new("Ham")
cheese = Ingredient.new("Cheese")
bun = Ingredient.new("Bun")
shell = Ingredient.new("Shell")
bread = Ingredient.new("Bread")

recipe_ingredient_1 = RecipeIngredient.new(noodle, pasta)
recipe_ingredient_2 = RecipeIngredient.new(wheat, pizza)
recipe_ingredient_3 = RecipeIngredient.new(cheese, pizza)
recipe_ingredient_4 = RecipeIngredient.new(steak, burger)
recipe_ingredient_5 = RecipeIngredient.new(shell, taco)
recipe_ingredient_6 = RecipeIngredient.new(cheese, pasta)
recipe_ingredient_7 = RecipeIngredient.new(bread, sandwhich)
recipe_ingredient_8 = RecipeIngredient.new(ham, pizza)
recipe_ingredient_8 = RecipeIngredient.new(steak, taco)

allergen1 = Allergen.new(risher, cheese)
allergen2 = Allergen.new(devin, noodle)
allergen3 = Allergen.new(risher, ham)
allergen4 = Allergen.new(tashawn, cheese)









binding.pry
