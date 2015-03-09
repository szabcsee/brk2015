class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :food_type
      t.date :meal_date
      t.string :meal_type
      t.references :user

      t.timestamps
    end
    add_index :meals, :user_id
  end
end
