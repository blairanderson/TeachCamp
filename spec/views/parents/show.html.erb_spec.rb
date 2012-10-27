require 'spec_helper'

describe "parents/show" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :student_id => 1,
      :name => "Name",
      :phone => "Phone",
      :email => "Email",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
  end
end
