class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.text :image_url
      t.string :text
      t.integer :user_id
      t.integer :group_id
      t.timestamps null: false
    end
  end
end
