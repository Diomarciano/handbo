require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :item => "Item",
      :subitem => "Subitem",
      :image => "",
      :price => "9.99",
      :description => "Description",
      :stadt => "Stadt"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/Subitem/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Stadt/)
  end
end
