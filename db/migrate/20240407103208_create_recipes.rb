class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    drop_table :recipes, if_exists: true
    create_table :recipes do |t|
      t.string :title

      t.timestamps
    end
  end
end
