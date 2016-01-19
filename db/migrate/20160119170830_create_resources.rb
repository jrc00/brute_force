class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :language
      t.string :type
      t.text :link
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
