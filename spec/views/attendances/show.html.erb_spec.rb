require 'spec_helper'

describe "attendances/show" do
  before(:each) do
    @attendance = assign(:attendance, stub_model(Attendance,
      :student_id => 1,
      :class_id => 2,
      :present => false,
      :tardy => false,
      :excused => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
