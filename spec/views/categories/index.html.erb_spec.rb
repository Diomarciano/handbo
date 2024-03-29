require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :category_id => "",
        :image => "MyText",
        :parent_id => 1,
        :status => 2
      ),
      Category.create!(
        :category_id => "",
        :image => "MyText",
        :parent_id => 1,
        :status => 2
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
