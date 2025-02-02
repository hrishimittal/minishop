require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @product = products(:one)
    @product2 = products(:two)
    sign_in @user
  end

  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Minishop"
  end

  test "should create product" do
    visit root_url
    click_on "Add new product"

    find("trix-editor").set("wonderful product")
    fill_in "Price", with: 25.0
    fill_in "Title", with: "My amazing wallpaper"
    click_on "Create Product"

    assert_text "Product was successfully created"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    find("trix-editor").set("new description")
    fill_in "Price", with: 20.0
    fill_in "Title", with: "New product title"
    click_on "Update Product"

    assert_text "Product was successfully updated"
  end
end


















