class AddLanguageReferenceToResources < ActiveRecord::Migration
  def change
    add_reference :resources, :language, index: true, foreign_key: true
  end
end
