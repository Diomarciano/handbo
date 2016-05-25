require 'rails_helper'

RSpec.describe "u_sers/index", type: :view do
  before(:each) do
    assign(:u_sers, [
      USer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => ""
      ),
      USer.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => ""
      )
    ])
  end

  it "renders a list of u_sers" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
