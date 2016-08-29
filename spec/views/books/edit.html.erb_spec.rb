require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyText",
      :judul => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "textarea#book_title[name=?]", "book[title]"

      assert_select "input#book_judul[name=?]", "book[judul]"
    end
  end
end
