require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :product_id => "",
      :sku => "MyString",
      :quantity => 1,
      :image => "MyString",
      :price => "9.99",
      :shipping => 1,
      :weight => "9.99",
      :weight_class_id => 1,
      :length => "9.99",
      :width => "9.99",
      :height => "9.99",
      :length_class_id => "MyString",
      :status => 1,
      :viewed => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_product_id[name=?]", "product[product_id]"

      assert_select "input#product_sku[name=?]", "product[sku]"

      assert_select "input#product_quantity[name=?]", "product[quantity]"

      assert_select "input#product_image[name=?]", "product[image]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_shipping[name=?]", "product[shipping]"

      assert_select "input#product_weight[name=?]", "product[weight]"

      assert_select "input#product_weight_class_id[name=?]", "product[weight_class_id]"

      assert_select "input#product_length[name=?]", "product[length]"

      assert_select "input#product_width[name=?]", "product[width]"

      assert_select "input#product_height[name=?]", "product[height]"

      assert_select "input#product_length_class_id[name=?]", "product[length_class_id]"

      assert_select "input#product_status[name=?]", "product[status]"

      assert_select "input#product_viewed[name=?]", "product[viewed]"
    end
  end
end
