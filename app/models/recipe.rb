# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Recipe < ApplicationRecord
    has_many :recipe_ingredients, dependent: :delete_all
    has_many :ingredients, through: :recipe_ingredients
    accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true
    validates_presence_of :title

    accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true
  
    before_save :find_or_create_ingredients
  
    def find_or_create_ingredients
      self.recipe_ingredients.each do |recipe_ingredient|
        recipe_ingredient.ingredient = Ingredient.find_or_create_by(name:recipe_ingredient.ingredient.name)
      end
    end
end
