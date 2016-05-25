require 'rails_helper'

RSpec.describe "u_sers/new", type: :view do
  before(:each) do
    assign(:u_ser, USer.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password => ""
    ))
  end

  it "renders new u_ser form" do
    render

    assert_select "form[action=?][method=?]", u_sers_path, "post" do

      assert_select "input#u_ser_first_name[name=?]", "u_ser[first_name]"

      assert_select "input#u_ser_last_name[name=?]", "u_ser[last_name]"

      assert_select "input#u_ser_email[name=?]", "u_ser[email]"

      assert_select "input#u_ser_password[name=?]", "u_ser[password]"
    end
  end
end
