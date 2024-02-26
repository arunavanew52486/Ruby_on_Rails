require "test_helper"

class ListCategoryTest < ActionDispatch::IntegrationTest
  def setup
    @caetgory = Category.create(name: "Sports")
    @caetgory2 = Category.create(name: "Travel")
  end

  test "Should show categoey listing" do
    get categories_path
    assert_select "a[href=?]", category_path(@category), text: @category.name
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end
end
