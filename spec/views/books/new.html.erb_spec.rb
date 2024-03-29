require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyText",
      :judul => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "textarea#book_title[name=?]", "book[title]"

      assert_select "input#book_judul[name=?]", "book[judul]"
    end
  end
end
