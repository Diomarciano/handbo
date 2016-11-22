require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :item => "MyString",
      :subitem => "MyString",
      :image => "",
      :price => "9.99",
      :description => "MyString",
      :stadt => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_item[name=?]", "product[item]"

      assert_select "input#product_subitem[name=?]", "product[subitem]"

      assert_select "input#product_image[name=?]", "product[image]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_stadt[name=?]", "product[stadt]"
    end
  end
end
