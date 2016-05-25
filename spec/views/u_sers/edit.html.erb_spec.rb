require 'rails_helper'

RSpec.describe "u_sers/edit", type: :view do
  before(:each) do
    @u_ser = assign(:u_ser, USer.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password => ""
    ))
  end

  it "renders the edit u_ser form" do
    render

    assert_select "form[action=?][method=?]", u_ser_path(@u_ser), "post" do

      assert_select "input#u_ser_first_name[name=?]", "u_ser[first_name]"

      assert_select "input#u_ser_last_name[name=?]", "u_ser[last_name]"

      assert_select "input#u_ser_email[name=?]", "u_ser[email]"

      assert_select "input#u_ser_password[name=?]", "u_ser[password]"
    end
  end
end
