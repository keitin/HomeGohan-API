class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :user_id
      t.integer :meal_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
