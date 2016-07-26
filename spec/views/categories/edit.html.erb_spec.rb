require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :category_id => "",
      :image => "MyText",
      :parent_id => 1,
      :status => 1
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_category_id[name=?]", "category[category_id]"

      assert_select "textarea#category_image[name=?]", "category[image]"

      assert_select "input#category_parent_id[name=?]", "category[parent_id]"

      assert_select "input#category_status[name=?]", "category[status]"
    end
  end
end
