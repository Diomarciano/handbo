require 'rails_helper'

RSpec.describe "length_classes/edit", type: :view do
  before(:each) do
    @length_class = assign(:length_class, LengthClass.create!(
      :length_class_id => 1,
      :value => "9.99"
    ))
  end

  it "renders the edit length_class form" do
    render

    assert_select "form[action=?][method=?]", length_class_path(@length_class), "post" do

      assert_select "input#length_class_length_class_id[name=?]", "length_class[length_class_id]"

      assert_select "input#length_class_value[name=?]", "length_class[value]"
    end
  end
end
