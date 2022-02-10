require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
      entry = Entry.new(meal_type: "Breakfast", calories: 10, carbohydrates: 5, proteins:3, fats: 2)
      assert entry.save
  end

  test "should not save entry without calories" do
      entry = Entry.new(meal_type: "Breakfast", carbohydrates: 5, proteins:3, fats: 2)
      assert_not entry.save
  end

  test "should not save entry without proteins" do
      entry = Entry.new(meal_type: "Breakfast", calories: 10, carbohydrates: 5, fats: 2)
      assert_not entry.save
  end

  test "should not save entry without meal_type" do
      entry = Entry.new(calories: 10, carbohydrates: 5, proteins:3, fats: 2)
      assert_not entry.save
  end
end
