class CreateJoinTableLanguageUser < ActiveRecord::Migration
  def change
    create_join_table :languages, :users do |t|
      # t.index [:language_id, :user_id]
      # t.index [:user_id, :language_id]
    end
  end
end
