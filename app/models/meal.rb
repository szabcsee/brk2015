class Meal < ActiveRecord::Base
  belongs_to :user

  validate :food_type, :meal_date, :meal_type, :presence => true
end
