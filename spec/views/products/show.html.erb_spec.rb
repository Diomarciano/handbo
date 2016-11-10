require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :product_id => "",
      :sku => "Sku",
      :quantity => 1,
      :image => "Image",
      :price => "9.99",
      :shipping => 2,
      :weight => "9.99",
      :weight_class_id => 3,
      :length => "9.99",
      :width => "9.99",
      :height => "9.99",
      :length_class_id => "Length Class",
      :status => 4,
      :viewed => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Length Class/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
