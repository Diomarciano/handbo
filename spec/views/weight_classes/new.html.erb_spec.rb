require 'rails_helper'

RSpec.describe "weight_classes/new", type: :view do
  before(:each) do
    assign(:weight_class, WeightClass.new(
      :weight_class_id => 1,
      :value => "9.99"
    ))
  end

  it "renders new weight_class form" do
    render

    assert_select "form[action=?][method=?]", weight_classes_path, "post" do

      assert_select "input#weight_class_weight_class_id[name=?]", "weight_class[weight_class_id]"

      assert_select "input#weight_class_value[name=?]", "weight_class[value]"
    end
  end
end
