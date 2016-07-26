require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :category_id => "",
      :image => "MyText",
      :parent_id => 1,
      :status => 1
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_category_id[name=?]", "category[category_id]"

      assert_select "textarea#category_image[name=?]", "category[image]"

      assert_select "input#category_parent_id[name=?]", "category[parent_id]"

      assert_select "input#category_status[name=?]", "category[status]"
    end
  end
end
