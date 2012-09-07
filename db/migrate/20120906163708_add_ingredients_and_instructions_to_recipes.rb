class AddIngredientsAndInstructionsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :ingredients, :text
    add_column :recipes, :instructions, :text
  end
end
