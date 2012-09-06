class AddSearchIndexToRecipes < ActiveRecord::Migration
  def up
    execute "create index recipes_title on recipes using gin(to_tsvector('english', title))"
  end

  def down
    execute "drop index recipes_title"
  end
end
