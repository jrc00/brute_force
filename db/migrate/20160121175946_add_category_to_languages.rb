class AddCategoryToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :category, :string
  end
end
