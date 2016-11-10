require 'rails_helper'

RSpec.describe "length_classes/index", type: :view do
  before(:each) do
    assign(:length_classes, [
      LengthClass.create!(
        :length_class_id => 1,
        :value => "9.99"
      ),
      LengthClass.create!(
        :length_class_id => 1,
        :value => "9.99"
      )
    ])
  end

  it "renders a list of length_classes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
