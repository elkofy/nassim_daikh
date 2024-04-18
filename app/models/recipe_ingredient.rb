# == Schema Information
#
# Table name: recipe_ingredients
#
#  id            :integer          not null, primary key
#  amount        :float
#  description   :text
#  recipe_id     :integer          not null
#  ingredient_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  accepts_nested_attributes_for :ingredient
end
