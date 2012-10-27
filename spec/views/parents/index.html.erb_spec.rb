require 'spec_helper'

describe "parents/index" do
  before(:each) do
    assign(:parents, [
      stub_model(Parent,
        :student_id => 1,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :address => "Address"
      ),
      stub_model(Parent,
        :student_id => 1,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :address => "Address"
      )
    ])
  end

  it "renders a list of parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
