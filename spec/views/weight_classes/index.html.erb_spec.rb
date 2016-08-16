require 'rails_helper'

RSpec.describe "weight_classes/index", type: :view do
  before(:each) do
    assign(:weight_classes, [
      WeightClass.create!(
        :weight_class_id => 1,
        :value => "9.99"
      ),
      WeightClass.create!(
        :weight_class_id => 1,
        :value => "9.99"
      )
    ])
  end

  it "renders a list of weight_classes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
