require 'rails_helper'

RSpec.describe "weight_classes/show", type: :view do
  before(:each) do
    @weight_class = assign(:weight_class, WeightClass.create!(
      :weight_class_id => 1,
      :value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
  end
end
