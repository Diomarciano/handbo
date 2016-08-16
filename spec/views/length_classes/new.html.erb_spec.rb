require 'rails_helper'

RSpec.describe "length_classes/new", type: :view do
  before(:each) do
    assign(:length_class, LengthClass.new(
      :length_class_id => 1,
      :value => "9.99"
    ))
  end

  it "renders new length_class form" do
    render

    assert_select "form[action=?][method=?]", length_classes_path, "post" do

      assert_select "input#length_class_length_class_id[name=?]", "length_class[length_class_id]"

      assert_select "input#length_class_value[name=?]", "length_class[value]"
    end
  end
end
