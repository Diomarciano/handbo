require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :item => "Item",
        :subitem => "Subitem",
        :image => "",
        :price => "9.99",
        :description => "Description",
        :stadt => "Stadt"
      ),
      Product.create!(
        :item => "Item",
        :subitem => "Subitem",
        :image => "",
        :price => "9.99",
        :description => "Description",
        :stadt => "Stadt"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Subitem".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Stadt".to_s, :count => 2
  end
end
