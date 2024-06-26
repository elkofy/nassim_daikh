# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
grilled_cheese = Recipe.find_or_create_by(title: "Grilled Cheese")
mac = Recipe.find_or_create_by(title: "Gruyere and White Cheddar Mac and Cheese")


butter = Ingredient.find_or_create_by(name: "Butter")
bread = Ingredient.find_or_create_by(name: "Sourdough Bread")
mayonnaise = Ingredient.find_or_create_by(name: "Mayonnaise")
manchego_cheese = Ingredient.find_or_create_by(name: "Manchego Cheese")
onion_powder = Ingredient.find_or_create_by(name: "Onion Powder")
white_cheddar = Ingredient.find_or_create_by(name: "Sharp White Cheddar Cheese")
monterey_jack = Ingredient.find_or_create_by(name: "Monterey Jack Cheese")
gruyere_cheese = Ingredient.find_or_create_by(name: "Gruyere Cheese")
brie_cheese = Ingredient.find_or_create_by(name: "Brie Cheese")
elbows = Ingredient.find_or_create_by(name: "Elbow Macaroni")
breadcrumbs = Ingredient.find_or_create_by(name: "Seasoned Breadcrumbs")
flour = Ingredient.find_or_create_by(name: "Flour")
milk = Ingredient.find_or_create_by(name: "Milk")
half_and_half = Ingredient.find_or_create_by(name: "Half and Half")
nutmeg = Ingredient.find_or_create_by(name: "Nutmeg")
salt = Ingredient.find_or_create_by(name: "Salt")
pepper = Ingredient.find_or_create_by(name: "Pepper")
parmigiano = Ingredient.find_or_create_by(name: "Parmigiano Reggiano")
olive_oil = Ingredient.find_or_create_by(name: "Olive Oil")

RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: butter, amount: "6 tbsp", description: "softened, divided")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: bread, amount: "8 slices")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: mayonnaise, amount: "3 tbsp")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: manchego_cheese, amount: "3 tbsp", description: "finely shredded")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: onion_powder, amount: "1/8 tsp")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: white_cheddar, amount: "1/2 cup", description: "shredded")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: gruyere_cheese, amount: "1/2 cup", description: "shredded")
RecipeIngredient.find_or_create_by(recipe: grilled_cheese, ingredient: brie_cheese, amount: "4 oz", description: "rind removed and sliced")

RecipeIngredient.find_or_create_by(recipe: mac, ingredient: elbows, amount: "1 lb")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: gruyere_cheese, amount: "1 lb", description: "grated")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: white_cheddar, amount: "1 lb", description: "grated")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: breadcrumbs, amount: "1/3 cup")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: butter, amount: "1/2 stick")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: flour, amount: "1/4 cup")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: milk, amount: "3 cup")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: half_and_half, amount: "1 cup")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: nutmeg, amount: "pinch")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: salt, description: "to taste")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: pepper, description: "to taste")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: parmigiano, description: "to taste")
RecipeIngredient.find_or_create_by(recipe: mac, ingredient: olive_oil)