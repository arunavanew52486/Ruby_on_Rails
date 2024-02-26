require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "get new category from and create category" do
    get new_category_path
    assert_response :success
    assert_difference("Category.count", 1) do
      post categories_path, params: { category: { name: "Sports" } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Sports", response.body
  end

  test "get new category from and reject invalid category submission" do
    get new_category_path
    assert_response :success
    assert_no_difference("Category.count") do
      post categories_path, params: { category: { name: "" } }
    end
    assert_select 'div' # allows us to check specific elements on the page
    #example
    # assert_select 'div.alert'
    # assert_select 'h2.alert-heading'
  end
end