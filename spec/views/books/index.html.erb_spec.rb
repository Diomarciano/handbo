require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "MyText",
        :judul => "Judul"
      ),
      Book.create!(
        :title => "MyText",
        :judul => "Judul"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
  end
end
