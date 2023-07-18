require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "check the '1st_Category' description" do
    category_first = Category.find_by(name: '1st_Category')
    assert_equal("1st_description", category_first.description)
  end
end
