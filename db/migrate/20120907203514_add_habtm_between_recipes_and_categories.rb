class AddHabtmBetweenRecipesAndCategories < ActiveRecord::Migration
  def up
    create_table "categories_recipes", :id => false, :force => true do |t|
      t.integer  "category_id"
      t.integer  "recipe_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

  def down
    drop_table "categories_recipes"
  end
end
