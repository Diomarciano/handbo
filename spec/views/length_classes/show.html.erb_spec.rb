require 'rails_helper'

RSpec.describe "length_classes/show", type: :view do
  before(:each) do
    @length_class = assign(:length_class, LengthClass.create!(
      :length_class_id => 1,
      :value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
  end
end
