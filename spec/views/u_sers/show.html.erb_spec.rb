require 'rails_helper'

RSpec.describe "u_sers/show", type: :view do
  before(:each) do
    @u_ser = assign(:u_ser, USer.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :password => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
  end
end
