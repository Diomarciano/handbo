require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :product_id => "",
        :sku => "Sku",
        :quantity => 1,
        :image => "Image",
        :price => "9.99",
        :shipping => 2,
        :weight => "9.99",
        :weight_class_id => 3,
        :length => "9.99",
        :width => "9.99",
        :height => "9.99",
        :length_class_id => "Length Class",
        :status => 4,
        :viewed => 5
      ),
      Product.create!(
        :product_id => "",
        :sku => "Sku",
        :quantity => 1,
        :image => "Image",
        :price => "9.99",
        :shipping => 2,
        :weight => "9.99",
        :weight_class_id => 3,
        :length => "9.99",
        :width => "9.99",
        :height => "9.99",
        :length_class_id => "Length Class",
        :status => 4,
        :viewed => 5
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Length Class".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
