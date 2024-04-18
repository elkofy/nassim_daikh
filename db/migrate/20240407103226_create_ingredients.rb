class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    drop_table :ingredients, if_exists: true
    create_table :ingredients do |t|
      t.string :name

      t.timestamps
    end
  end
end
